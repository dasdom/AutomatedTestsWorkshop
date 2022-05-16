//  Created by Dominik Hauser on 16.05.22.
//  
//

import XCTest
@testable import AutomatedTestsWorkshop
import SnapshotTesting
import SwiftUI

class SnapshotTests: XCTestCase {

  func test_userInputView() {
    let view = UserInputView(data: UserInputData())

    let host = UIHostingController(rootView: view)
    host.view.frame = UIScreen.main.bounds
    assertSnapshot(matching: host, as: .image)
  }

  func test_viewController() {
    let viewController = CodeBasedViewController()

    viewController.view.frame = UIScreen.main.bounds
    assertSnapshot(matching: viewController, as: .image)
  }
}
