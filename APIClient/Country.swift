//
//  CountryList.swift
//  CountryApp
//
//  Created by mgonzalez on 20/08/2021.
//

import Foundation

// MARK: - Country
public struct Country: Decodable {
    let name: String?
    let capital: String?
    let region: String?
    let subregion: String?
    let population: Int?
    let timezones, borders: [String]?
    let nativeName: String?
    let numericCode: String?
    let currencies: [Currency]?
    let languages: [Language]?
    let flag: String?

    public init(
        name: String? = nil,
        capital: String? = nil,
        region: String? = nil,
        subregion: String? = nil,
        population: Int? = nil,
        timezones: [String]? = nil,
        borders: [String]? = nil,
        nativeName: String? = nil,
        numericCode: String? = nil,
        currencies: [Currency]? = nil,
        languages: [Language]? = nil,
        flag: String? = nil
    ) {
        self.name = name
        self.capital = capital
        self.region = region
        self.subregion = subregion
        self.population = population
        self.timezones = timezones
        self.borders = borders
        self.nativeName = nativeName
        self.numericCode = numericCode
        self.currencies = currencies
        self.languages = languages
        self.flag = flag
    }

    // MARK: - Currency
    public struct Currency: Decodable {
        let code, name, symbol: String?

        public init(
            code: String? = nil,
            name: String? = nil,
            symbol: String? = nil
        ) {
            self.code = code
            self.name = code
            self.symbol = code
        }
    }

    // MARK: - Language
    public struct Language: Decodable {
        let iso6391: String?
        let iso6392, name, nativeName: String?

        enum CodingKeys: String, CodingKey {
            case iso6391 = "iso639_1"
            case iso6392 = "iso639_2"
            case name, nativeName
        }

        public init(
            iso6391: String? = nil,
            iso6392: String? = nil,
            name: String? = nil,
            nativeName: String? = nil
        ) {
            self.iso6391 = iso6391
            self.iso6392 = iso6392
            self.name = name
            self.nativeName = nativeName
        }
    }
}
