//
//  CountryAPI.swift
//  CountryApp
//
//  Created by mgonzalez on 20/08/2021.
//

import Foundation
import Combine

public struct CountryAPI {
    public var countryList: () -> AnyPublisher<[Country], Error>
    public let baseUrl = URL(string: "http://api.countrylayer.com/v2/")!

  public init (
    countryList: @escaping () -> AnyPublisher<[Country], Error>
  ) {
    self.countryList = countryList
  }
}

public enum APIPath: String {
    case all = "all"
    case countryCodes = "alpha"
}

public extension CountryAPI {
  static func live(_ path: APIPath, parameters: String? = nil) -> Self {
    let apiClient = APIClient()

    guard let url =  URL(string: "http://api.countrylayer.com/v2/"), var components = URLComponents(
      url:  url.appendingPathComponent(path.rawValue),
      resolvingAgainstBaseURL: true
    ) else { fatalError("Couldn't create URLComponents") }

    let queryItems = [URLQueryItem(name: "access_key", value: "d729ecfc91f0462d20c1c225274e0231")]
    components.queryItems = queryItems

    let request = URLRequest(url: components.url!)
    return Self(
      countryList: {
        apiClient.runRequest(request)
          .map(\.value)
          .eraseToAnyPublisher()
      }
    )
  }

  #if DEBUG
  static let mock = Self(countryList: {
    Just(Country.mocks)
      .setFailureType(to: Error.self)
      .eraseToAnyPublisher()
    }
  )
  #endif
}
