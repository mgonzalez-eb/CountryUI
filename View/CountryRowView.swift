//
//  CountryRowView.swift
//  CountryApp
//
//  Created by mgonzalez on 26/08/2021.
//

import SwiftUI
import SVGKit

struct CountryRowView: View {
    private enum Constants {
        static let imageWidth: CGFloat = 88
        static let imageHeight: CGFloat = 88
        static let textTopPadding: CGFloat = 8
    }


    private let state: CountryListStore.CountryState.Item

    init(state: CountryListStore.CountryState.Item) {
        self.state = state
    }

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(state.name ?? "")
                    .font(.body)
                    .foregroundColor(.primary)
                Text(state.capital ?? "")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding(.top, Constants.textTopPadding)
            Spacer()
        }
    }
}

struct CountryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryRowView(
            state: CountryListStore.CountryState.mocks[0].items[1]
            )
    }
}
