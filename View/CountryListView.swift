//
//  CountryListView.swift
//  CountryApp
//
//  Created by mgonzalez on 09/09/2021.
//

import SwiftUI

struct CountryListView: View {

  init(viewModel: CountryListStore.CountryViewModel) {
        self.viewModel = viewModel
    }

    @ObservedObject private var viewModel: CountryListStore.CountryViewModel

    var body: some View {
      NavigationView {
        List {
          switch viewModel.state {
          case .notRequested, .loading(.none), .loading(.some(_)):
            ProgressView()
              .frame(maxWidth: .infinity)
          case let .success(countryState):
            countryList(countryState.items)
          case let .failure(failureState):
            Text(failureState.text)
          }
        }
        .onAppear {
          viewModel.send(.onAppear)
        }
      }
      .padding()
      .navigationTitle("Countries")
    }

    @ViewBuilder
  private func countryList(_ items: [CountryListStore.CountryState.Item]) -> some View {
        ForEach(items) { item in
          NavigationLink(destination: Text(item.capital ?? "")) {
            CountryRowView(state: item)
          }
        }
        if viewModel.state.isLoading {
            ProgressView()
                .frame(maxWidth: .infinity)
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
      CountryListView(viewModel: .init(state: .notRequested, environment: .init(countryApi: .mock)))
    }
}
