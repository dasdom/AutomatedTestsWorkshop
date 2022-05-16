//  Created by Dominik Hauser on 07.05.22.
//  
//

import UIKit

class StoryboardBasedViewController: UIViewController {

  // Don't add bool values to record navigation events
  // in your apps. This is just for demo purposes.
  var viewDidLoadCalled = false
  @IBOutlet weak var nextButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

    viewDidLoadCalled = true
  }
}
