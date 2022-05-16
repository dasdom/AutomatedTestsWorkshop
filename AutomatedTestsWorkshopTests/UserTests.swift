//  Created by Dominik Hauser on 16.05.22.
//  
//

import XCTest
@testable import AutomatedTestsWorkshop

class UserTests: XCTestCase {

  var sut: User!

  override func setUpWithError() throws {
    sut = User()
  }

  override func tearDownWithError() throws {
    sut = nil
  }

  func test_settingFirstAndLastname_shouldSetNameProperty() {
    // given
    sut.firstName = "Dominik"
    sut.lastname = "Hauser"

    // when

    // then
  }
}
