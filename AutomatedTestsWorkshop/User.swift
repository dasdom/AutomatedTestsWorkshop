//  Created by Dominik Hauser on 16.05.22.
//  
//

import Foundation

struct User {
  var firstName: String = "" {
    didSet {
      fullName = "\(firstName) \(lastname)"
    }
  }
  var lastname: String = "" {
    didSet {
      fullName = "\(firstName) \(lastname)"
    }
  }
  var fullName: String = ""
}
