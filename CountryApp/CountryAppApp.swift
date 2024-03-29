//
//  CountryAppApp.swift
//  CountryApp
//
//  Created by mgonzalez on 13/08/2021.
//

import SwiftUI

@main
struct CountryAppApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(
            viewModel: CountryListStore.CountryViewModel(
              state: .notRequested,
              environment: .init(countryApi: .live(.all))
            )
          )
        }
    }
}
