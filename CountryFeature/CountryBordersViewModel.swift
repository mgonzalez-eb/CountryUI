//
//  CountryBordersViewModel.swift
//  CountryApp
//
//  Created by mgonzalez on 27/08/2021.
//

/*
import Combine
import Foundation

enum CountryBordersAction {
    case onAppear
    case didLoadBorderCountries([Country])
    case didFail
}

class CountryBordersViewModel: ObservableObject {

    typealias State = CountryListState<CountryListStore.CountryState>

    @Published private(set) var state: State

    private var cancellable: AnyCancellable?

    init(
        state: State = State(countryListResultsState: .notRequested)
    ) {
        self.state = state
    }

    func send(_ action: CountryBordersAction) {
        switch action {

        case .onAppear:
            guard case .notRequested = state.countryListResultsState else { return }
            state.countryListResultsState = .loading()
            //loadBordersCountries(country: Country())
        case let .didLoadBorderCountries(countryList):
//            do {
//                state.countryListResultsState = .success(CountryListStore.CountryState(countryList: countryList))
//            } catch {
//                state.countryListResultsState = .failure(FailureState(text: error.localizedDescription))
//            }
        break
        case .didFail:
            state.countryListResultsState = .failure(FailureState(text: "Fallo"))
        }
    }
}

//private extension CountryBordersViewModel {
//    func loadBordersCountries(country: Country) {
//        let borderCodes: String = country.borders?.joined(separator: ";") ?? ""
//      cancellable = CountryAPI.request(.countryCodes, parameters: borderCodes)
//            .map { countryList in
//                CountryBordersAction.didLoadBorderCountries(countryList)
//            }
//            .catch { _ in
//                Just(CountryBordersAction.didFail)
//            }
//            .sink { [weak self] action in
//                self?.send(action)
//            }
//    }
//}

*/
