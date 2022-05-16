//  Created by Dominik Hauser on 06.05.22.
//  
//

import UIKit

class CodeBasedViewController: UIViewController {

  // Don't do that in your apps. This is just
  // for demo purposes.
  var loadViewCalled = false
  var viewDidLoadCalled = false
  var viewWillAppearCalled = false
  var viewDidAppearCalled = false
  var viewWillDisappearCalled = false
  var viewDidDisappearCalled = false

  override func loadView() {
    loadViewCalled = true
    let contentView = CodeBasedView()
    view = contentView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewDidLoadCalled = true
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    viewWillAppearCalled = true
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    viewDidAppearCalled = true
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)

    viewWillDisappearCalled = true
  }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)

    viewDidDisappearCalled = true
  }
}
