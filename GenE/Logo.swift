//
//  Logo.swift
//  GenE
//
//  Created by chris richardson on 10/29/20.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Image("GenE Logo Transparent")
            .resizable()
            .frame(width: 450, height: 250)
            .shadow(radius: 10)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
