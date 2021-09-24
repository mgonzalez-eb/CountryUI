//
//  CountryBordersStore.swift
//  CountryApp
//
//  Created by mgonzalez on 17/09/2021.
//

import Combine
/*
public enum CountryBordersStore {
  //State
  public struct CountryState: Equatable {
    struct Item: Hashable, Identifiable {
      var id: String?
      var name: String?
      var capital: String?
      var flagImageURL: String?
      var region: String?
      var subRegion: String?
    }

    var items: [Item]
  }

  //Action
  public enum Action {
    case onAppear(Country)
    case didLoadBorderCountries ([Country])
    case didFail
  }

  // Environment
  public struct Environment {
    public var countryApi: CountryAPI
    public func live(parameters: String?) -> Self {
      return Self(countryApi: .live(.countryCodes, parameters: parameters))
    }
  }

  public class CountryBordersViewModel: ObservableObject {

    typealias State = CountryListState<CountryBordersStore.CountryState>

    @Published private(set) var state: State

    private let environment: Environment
    private var cancellable: AnyCancellable?

    init(
      state: State = State(countryListResultsState: .notRequested),
      environment: Environment
    ) {
      self.state = state
      self.environment = environment
    }

    func send(_ action: CountryBordersStore.Action) {
      switch action {

      case let .onAppear(country):
        guard case .notRequested = state.countryListResultsState else { return }
        state.countryListResultsState = .loading()
        loadBordersCountries(country: country, environment: environment)
      case let .didLoadBorderCountries(countryList):
        state.countryListResultsState = .success(CountryState(countryList: countryList))
      case .didFail:
        state.countryListResultsState = .failure(FailureState(text: "Fallo"))
      }
    }

    func loadBordersCountries(country: Country, environment: Environment) {
      let borderCodes: String = country.borders?.joined(separator: ";") ?? ""
      cancellable = environment.live(parameters: borderCodes).countryApi.countryList()
        .map { countryList in
          CountryBordersStore.Action.didLoadBorderCountries(countryList)
        }
        .catch { _ in
          Just(CountryBordersStore.Action.didFail)
        }
        .sink { [weak self] action in
          self?.send(action)
        }
    }
  }
}
*/
