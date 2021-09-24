//
//  ContentView.swift
//  CountryApp
//
//  Created by mgonzalez on 13/08/2021.
//

import SwiftUI

struct ContentView: View {

    let viewModel: CountryListStore.CountryViewModel

    var body: some View {
        CountryListView(viewModel: viewModel)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//      ContentView(
//        viewModel: CountryListStore.CountryViewModel(
//          state: .init(
//            countryListResultsState: .success(
//              .mocks[0]
//            )
//          ),
//          environment: CountryListStore.Environment(countryApi: .apiClient)
//        )
//      )
//    }
//}
