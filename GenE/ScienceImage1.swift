//
//  ScienceImage1.swift
//  GenE
//
//  Created by chris richardson on 10/29/20.
//

import SwiftUI

struct ScienceImage1: View {
    var body: some View {
        
        Image("ScienceImage1")
                .resizable()
                .frame(width: 400, height: 250)
    }
}

struct ScienceImage1_Previews: PreviewProvider {
    static var previews: some View {
        ScienceImage1()
    }
}
