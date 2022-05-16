//  Created by Dominik Hauser on 16.05.22.
//  
//

import Foundation
import Combine

class UserStore {
  let usersPublisher: CurrentValueSubject<[User], Never>
  private var users: [User] = [] {
    didSet {
      usersPublisher.send(users)
    }
  }

  init() {
    usersPublisher = CurrentValueSubject<[User], Never>([])
  }

  func add(_ user: User) {
    users.append(user)
  }
}
