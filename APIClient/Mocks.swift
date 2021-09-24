//
//  Mocks.swift
//  CountryApp
//
//  Created by mgonzalez on 20/08/2021.
//

#if DEBUG

import Foundation

extension CountryListStore.CountryState {
    static let mocks: [CountryListStore.CountryState] = [
      CountryListStore.CountryState(items: [
          CountryListStore.CountryState.Item(id: "1",
                              name: "Argentina",
                              capital: "Buenos Aires",
                              flagImageURL: "https://restcountries.eu/data/col.svg",
                              region: "Americas",
                              subRegion: "South America"),
          CountryListStore.CountryState.Item(id: "1",
                              name: "Argentina",
                              capital: "Buenos Aires",
                              flagImageURL: "https://restcountries.eu/data/col.svg",
                              region: "Americas",
                              subRegion: "South America"),
          CountryListStore.CountryState.Item(id: "1",
                              name: "Argentina",
                              capital: "Buenos Aires",
                              flagImageURL: "https://restcountries.eu/data/col.svg",
                              region: "Americas",
                              subRegion: "South America"),
          CountryListStore.CountryState.Item(id: "1",
                              name: "Argentina",
                              capital: "Buenos Aires",
                              flagImageURL: "https://restcountries.eu/data/col.svg",
                              region: "Americas",
                              subRegion: "South America")
        ])
    ]
}

extension Country {
  static let mocks: [Country] = [
    Country(name: "Argentina",
            capital: "Buenos Aires",
            region: "Americas",
            subregion: "South America",
            flag: "https://restcountries.eu/data/col.svg"
    ),
    Country(name: "Argentina",
            capital: "Buenos Aires",
            region: "Americas",
            subregion: "South America",
            flag: "https://restcountries.eu/data/col.svg"
    ),
    Country(name: "Argentina",
            capital: "Buenos Aires",
            region: "Americas",
            subregion: "South America",
            flag: "https://restcountries.eu/data/col.svg"
    ),
    Country(name: "Argentina",
            capital: "Buenos Aires",
            region: "Americas",
            subregion: "South America",
            flag: "https://restcountries.eu/data/col.svg"
    ),
    Country(name: "Argentina",
            capital: "Buenos Aires",
            region: "Americas",
            subregion: "South America",
            flag: "https://restcountries.eu/data/col.svg"
    ),
    Country(name: "Argentina",
            capital: "Buenos Aires",
            region: "Americas",
            subregion: "South America",
            flag: "https://restcountries.eu/data/col.svg"
    )
  ]
}


#endif
