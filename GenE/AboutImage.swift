//
//  AboutImage.swift
//  GenE
//
//  Created by chris richardson on 10/29/20.
//

import SwiftUI

struct AboutImage: View {
    var body: some View {
        Image("AboutImage")
            .resizable()
            .frame(width: 840, height: 500)
    }
}

struct AboutImage_Previews: PreviewProvider {
    static var previews: some View {
        AboutImage()
    }
}
