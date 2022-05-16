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
    let token = sut.usersPublisher
      .dropFirst()
      .delay(for: 0.1, scheduler: RunLoop.main)
      .sink { users in
        result = users
      }

    // when
    sut.add(user)

    // then
    token.cancel()
    XCTAssertEqual(result, [user])
  }
}
