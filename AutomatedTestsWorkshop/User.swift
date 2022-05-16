//  Created by Dominik Hauser on 16.05.22.
//  
//

import Foundation

struct User {
  var firstName: String = "" {
    didSet {
      updateName()
    }
  }
  var lastname: String = "" {
    didSet {
      updateName()
    }
  }
  var fullName: String = ""

  private mutating func updateName() {
    fullName = [firstName, lastname].joined(separator: " ")
  }
}
