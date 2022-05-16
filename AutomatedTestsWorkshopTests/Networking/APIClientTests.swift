//  Created by Dominik Hauser on 06.08.21.
//  
//

import XCTest
@testable import AutomatedTestsWorkshop

class APIClientTests: XCTestCase {

  var sut: APIClient!

  override func setUpWithError() throws {
    sut = APIClient()
  }

  override func tearDownWithError() throws {
    sut = nil
  }

  func test_loadUser_userInBlock() async throws {
    // given
    let url = URL(string: "http://example.com/user")!
    let user = User(firstName: "Dominik", lastname: "Hauser")
    let data = try JSONEncoder().encode(user)
    let urlSessionMock = URLSessionProtocolMock()
    urlSessionMock.dataFromDelegateReturnValue =
    (
      data,
      HTTPURLResponse(url: url, statusCode: 200, httpVersion: "GET", headerFields: nil)!
    )
    sut.session = urlSessionMock

    // when
    let loadedUser = try await sut.loadUser()

    // then
    XCTAssertEqual(urlSessionMock.dataFromDelegateReceivedArguments?.url, url)
    XCTAssertEqual(loadedUser, user)
  }
}
