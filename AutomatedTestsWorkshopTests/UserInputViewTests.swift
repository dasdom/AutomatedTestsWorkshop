//  Created by Dominik Hauser on 16.05.22.
//  
//

import XCTest
@testable import AutomatedTestsWorkshop
import ViewInspector

extension UserInputView: Inspectable {}

class UserInputViewTests: XCTestCase {

  var sut: UserInputView!
  var userInputData: UserInputData!

  override func setUpWithError() throws {
    userInputData = UserInputData()
    sut = UserInputView(data: userInputData)
  }

  override func tearDownWithError() throws {
    sut = nil
    userInputData = nil
  }

  func test_nameInput_shouldUpdateInputData() throws {
    let expected = "Dominik"

    try sut
      .inspect()
      .find(ViewType.TextField.self)
      .setInput(expected)

    let input = userInputData.firstName
    XCTAssertEqual(input, expected)
  }
}
