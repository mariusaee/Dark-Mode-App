//
//  Buttons.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 05.11.2021.
//

import SwiftUI

struct ButtonsView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "faceid")
                Text("Login")
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.mint)
            .cornerRadius(20)

            Text(" ")
                .frame(maxWidth: .infinity)
                .padding()
                .background(LinearGradient(colors: [.primary, .secondary], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(20)

            HStack {
                Image(systemName: "faceid")
                Text("Login")
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(colorScheme == .dark ? .green : .accentColor)
            .cornerRadius(20)
        }
        .padding()
        .font(.largeTitle)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
