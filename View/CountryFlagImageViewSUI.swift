//
//  CountryFlagImageViewSUI.swift
//  CountryApp
//
//  Created by mgonzalez on 26/08/2021.
//

import SwiftUI
import SVGKit

struct CountryFlagImageViewSUI: UIViewRepresentable {

    @Binding var url:URL
    @Binding var size:CGSize

    func makeUIView(context: Context) -> SVGKFastImageView {

        let svgImage = SVGKImage(contentsOf: url)
        return SVGKFastImageView(svgkImage: svgImage ?? SVGKImage())

    }

    func updateUIView(_ uiView: SVGKFastImageView, context: Context) {
        uiView.image = SVGKImage(contentsOf: url)
        uiView.image.size = size
    }


}

struct SVGImage_Previews: PreviewProvider {
    static var previews: some View {
        CountryFlagImageViewSUI(
            url: .constant(URL(string:"https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/android.svg")!),
            size: .constant(CGSize(width: 100,height: 100)))
    }
}
