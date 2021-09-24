//
//  CountryState.swift
//  CountryApp
//
//  Created by mgonzalez on 20/08/2021.
//

import Foundation

extension CountryListStore.CountryState {
  init(countryList: [Country]) {
    items = countryList.map { country in
      Item(
        id: country.numericCode,
        name: country.name,
        capital: country.capital,
        flagImageURL: country.flag,
        region: country.region,
        subRegion: country.subregion
      )
    }
  }
}

extension CountryListStore.CountryState.Item {
    init(countryListItem: Country) {
        id = countryListItem.numericCode
        name = countryListItem.name
        capital = countryListItem.capital
        flagImageURL = countryListItem.flag
        region = countryListItem.region
        subRegion = countryListItem.subregion
    }
}
/*
extension CountryBordersStore.CountryState {
  init(countryList: [Country]) {
    items = countryList.map(Item.init(countryListItem:))
  }

  func appending(contentsOf countryList: [Country]?) -> CountryBordersStore.CountryState {
    guard let countryList = countryList else {
      return CountryBordersStore.CountryState(items: items)
    }

    var newItems = items
    newItems.append(
      contentsOf: countryList.map(Item.init(countryListItem:))
    )

    return CountryBordersStore.CountryState(
      items: newItems
    )
  }
}

extension CountryBordersStore.CountryState.Item {
  init(countryListItem: Country) {
    id = countryListItem.numericCode
    name = countryListItem.name
    capital = countryListItem.capital
    flagImageURL = countryListItem.flag
    region = countryListItem.region
    subRegion = countryListItem.subregion
  }
}
*/
