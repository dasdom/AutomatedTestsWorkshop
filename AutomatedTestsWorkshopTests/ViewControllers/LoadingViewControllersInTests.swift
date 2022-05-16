//  Created by Dominik Hauser on 06.05.22.
//  
//

import XCTest
@testable import AutomatedTestsWorkshop

class LoadingViewControllersInTests: XCTestCase {

  func test_loading_whenViewControllerIsCodeBased() {
    // given
    let sut = CodeBasedViewController()

    // when
    sut.loadViewIfNeeded()

    // then
    XCTAssertEqual(sut.loadViewCalled, true)
    XCTAssertEqual(sut.viewDidLoadCalled, true)
  }

  func test_loading_whenViewControllerIsStoryboardBased() throws {
    // given
    let storyboard = UIStoryboard(name: "Storyboard", bundle: Bundle.main)
    // The identifier is the Storyboard ID from the Storyboard
    // scene.
    let sut = try XCTUnwrap(storyboard.instantiateViewController(
      withIdentifier: "StoryboardBasedViewController")
                            as? StoryboardBasedViewController)

    // when
    sut.loadViewIfNeeded()

    XCTAssertEqual(sut.viewDidLoadCalled, true)
  }

  func test_triggerViewWillAppearAndViewDidAppear() {
    // given
    let sut = CodeBasedViewController()

    // when
    sut.beginAppearanceTransition(true, animated: false)
    sut.endAppearanceTransition()

    // then
    XCTAssertEqual(sut.viewWillAppearCalled, true)
    XCTAssertEqual(sut.viewDidAppearCalled, true)
  }

  func test_triggerViewWillDisappearAndViewDidDisappear() {
    // given
    let sut = CodeBasedViewController()

    // when
    sut.beginAppearanceTransition(false, animated: false)
    sut.endAppearanceTransition()

    // then
    XCTAssertEqual(sut.viewWillDisappearCalled, true)
    XCTAssertEqual(sut.viewDidDisappearCalled, true)
  }
}
