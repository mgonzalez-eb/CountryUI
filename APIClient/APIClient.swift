//
//  APIClient.swift
//  CountryApp
//
//  Created by mgonzalez on 20/08/2021.
//

import Foundation
import Combine



struct APIClient {

  var urlSession: URLSession
  init (urlSession: URLSession = URLSession(configuration: .ephemeral)) {
    self.urlSession = urlSession
  }

    struct Response<T> {
        let value: T
        let response: URLResponse
    }

    func runRequest<T: Decodable>(_ request: URLRequest) -> AnyPublisher<Response<T>, Error> {
        return urlSession.dataTaskPublisher(for: request)
            .tryMap { result -> Response<T> in
                let value = try JSONDecoder().decode(T.self, from: result.data)
                return Response(value: value, response: result.response)
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
