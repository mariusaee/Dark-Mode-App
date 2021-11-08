//
//  SkyView.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 06.11.2021.
//

import SwiftUI

struct SkyView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            Color("Sky")
                .ignoresSafeArea()
            VStack {
                Image(systemName: colorScheme == .light ? "sun.max.fill" : "moon.fill")
                    .resizable()
                    .foregroundColor(Color("Sun or Moon"))
                    .frame(width: 300, height: 300)
                Spacer()
            }
            .padding()
        }
    }
}

struct SkyView_Previews: PreviewProvider {
    static var previews: some View {
        SkyView()
    }
}
