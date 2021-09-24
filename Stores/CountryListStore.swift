//
//  CountryListStore.swift
//  CountryApp
//
//  Created by mgonzalez on 17/09/2021.
//

import Combine
import Foundation

public enum CountryListStore {
  //State
  public struct CountryState: Equatable {
    public struct Item: Hashable, Identifiable {
      public var id: String?
      public var name: String?
      public var capital: String?
      public var flagImageURL: String?
      public var region: String?
      public var subRegion: String?
    }

    public var items: [Item]
  }


  //Action
  public enum Action {
    case onAppear
    case didLoadCountries([CountryListStore.CountryState.Item])
    case selectCountry(CountryListStore.CountryState.Item)
    case didFail
  }

  // Environment
  public struct Environment {
    public var countryApi: CountryAPI
    public static var live: Self {
      Self(countryApi: .live(.all))
    }
  }

  public class CountryViewModel: ObservableObject {

    @Published private(set) var state: LoadState<CountryListStore.CountryState>

    private let environment: Environment
    private var cancellable: AnyCancellable?

    init(
      state: LoadState<CountryListStore.CountryState> = .notRequested,
      environment: Environment
    ) {
      self.state = state
      self.environment = environment
    }

    func send(_ action: Action) {
      switch action {

      case .onAppear:
        guard case .notRequested = state else { return }
        state = .loading()
        loadCountries(environment: environment)
      case .selectCountry(_):
        break
      case let .didLoadCountries(countryList):
        state = .success(CountryListStore.CountryState.init(items: countryList))
      case .didFail:
        state = .failure(FailureState(text: "Fail"))
      }
    }

    private func loadCountries(environment: Environment) {
      cancellable = environment.countryApi.countryList()
        .map { countryList in
          Action.didLoadCountries(CountryListStore.CountryState.init(countryList: countryList).items)
        }
        .catch { _ in
          Just(Action.didFail)
        }
        .receive(on: DispatchQueue.main)
        .sink { [weak self] action in
          self?.send(action)
        }
    }
  }
}
