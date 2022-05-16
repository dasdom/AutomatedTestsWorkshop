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
    guard let url = URL(string: "http://example.com/user") else {
      fatalError()
    }
    guard let session = session else {
      fatalError()
    }

    let (data, _) = try await session.data(from: url, delegate: nil)
    let user = try JSONDecoder().decode(User.self, from: data)
    return user
  }
}
