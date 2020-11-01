//
//  ScienceImage2.swift
//  GenE
//
//  Created by chris richardson on 10/29/20.
//

import SwiftUI

struct ScienceImage2: View {
    var body: some View {
        
        Image("ScienceImage2")
                .resizable()
                .frame(width: 400, height: 250)
    }
}

struct ScienceImage2_Previews: PreviewProvider {
    static var previews: some View {
        ScienceImage2()
    }
}
