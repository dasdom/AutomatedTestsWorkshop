//  Created by Dominik Hauser on 16.05.22.
//  
//

import Foundation

protocol URLSessionProtocol {
  func data(from url: URL, delegate: URLSessionTaskDelegate?) async throws -> (Data, URLResponse)
}

extension URLSession: URLSessionProtocol {}

class APIClient {

  var session: URLSessionProtocol? = URLSession.shared

  func loadUser() async throws -> User {

    return User()
  }
}
