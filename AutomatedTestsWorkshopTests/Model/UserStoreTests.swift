//  Created by Dominik Hauser on 16.05.22.
//  
//

import XCTest
@testable import AutomatedTestsWorkshop

class UserStoreTests: XCTestCase {

  var sut: UserStore!

  override func setUpWithError() throws {
    sut = UserStore()
  }

  override func tearDownWithError() throws {
    sut = nil
  }

  func test_addUser_shouldPublishUsers() {
    // given
    let user = User(firstName: "name")
    var result: [User]?
    let publisherExpectation = expectation(description: "Wait for publisher in \(#file)")
    let token = sut.usersPublisher
      .dropFirst()
      .delay(for: 0.1, scheduler: RunLoop.main)
      .sink { users in
        result = users
        publisherExpectation.fulfill()
      }

    // when
    sut.add(user)

    // then
    wait(for: [publisherExpectation], timeout: 0.2)
    token.cancel()
    XCTAssertEqual(result, [user])
  }
}
