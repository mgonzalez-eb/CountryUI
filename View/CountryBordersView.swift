//
//  CountryBordersView.swift
//  CountryApp
//
//  Created by mgonzalez on 27/08/2021.
//

import SwiftUI
/*
struct CountryBordersView: View {

  init(viewModel: CountryBordersStore.CountryBordersViewModel) {
        self.viewModel = viewModel
    }

    @ObservedObject private var viewModel: CountryBordersStore.CountryBordersViewModel

    var body: some View {
        List {
            switch viewModel.state.countryListResultsState {
            case .notRequested, .loading(.none):
                ProgressView()
                    .frame(maxWidth: .infinity)
            case let .loading(.some(countryState)), let .success(countryState):
                countryBorderList(countryState)
            case let .failure(failureState):
                Text(failureState.text)
            }
        }
        .onAppear {
          viewModel.send(.onAppear(Country(name: "Colombia")))
        }
        .padding()
    }

    @ViewBuilder
    private func countryBorderList(_ state: CountryBordersStore.CountryState) -> some View {
        ForEach(state.items) { item in
          CountryRowView(state: CountryListStore.CountryState.Item(id: item.id, name: item.name, capital: item.capital, flagImageURL: item.flagImageURL, region: item.region, subRegion: item.region))
        }
        if viewModel.state.countryListResultsState.isLoading {
            ProgressView()
                .frame(maxWidth: .infinity)
        }
    }
}

struct CountryBordersView_Previews: PreviewProvider {
    static var previews: some View {
      CountryBordersView(viewModel: .init(state: .init(countryListResultsState: .notRequested), environment: .init(countryApi: .mock)))
    }
}
*/
