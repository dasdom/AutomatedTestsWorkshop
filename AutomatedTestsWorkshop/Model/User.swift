//  Created by Dominik Hauser on 16.05.22.
//  
//

import Foundation

struct User: Equatable, Codable {
  var firstName: String {
    didSet {
      updateName()
    }
  }
  var lastname: String {
    didSet {
      updateName()
    }
  }
  var fullName: String = ""

  init(firstName: String = "", lastname: String = "") {
    self.firstName = firstName
    self.lastname = lastname
  }

  private mutating func updateName() {
    fullName = [firstName, lastname].joined(separator: " ")
  }
}
