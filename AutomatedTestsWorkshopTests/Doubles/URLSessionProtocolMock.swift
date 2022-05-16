//  Created by Dominik Hauser on 06.08.21.
//  
//

import Foundation
@testable import AutomatedTestsWorkshop

// MARK: - URLSessionProtocolMock -

final class URLSessionProtocolMock: URLSessionProtocol {

  // MARK: - data

  var dataFromDelegateThrowableError: Error?
  var dataFromDelegateReceivedArguments: (url: URL, delegate: URLSessionTaskDelegate?)?
  var dataFromDelegateReturnValue: (Data, URLResponse)!

  func data(from url: URL, delegate: URLSessionTaskDelegate? = nil) async throws -> (Data, URLResponse) {
    if let error = dataFromDelegateThrowableError {
      throw error
    }
    dataFromDelegateReceivedArguments = (url: url, delegate: delegate)
    return dataFromDelegateReturnValue
  }
}
