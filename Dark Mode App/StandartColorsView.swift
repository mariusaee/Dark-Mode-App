//
//  StandartColorsView.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 05.11.2021.
//

import SwiftUI

struct StandardColorsView: View {
    private let standardColors = [
        Color.black,
        .white,
        .primary,
        .secondary,
        .blue,
        .brown,
        .cyan,
        .gray,
        .green,
        .indigo,
        .mint,
        .orange,
        .pink,
        .purple,
        .red,
        .teal,
        .yellow
    ]

    var body: some View {
        List(standardColors, id: \.self) { color in
            Text(color.description)
                .foregroundColor(color)
                .font(.largeTitle)
                .bold()
        }
    }
}

struct StandardColorsView_Previews: PreviewProvider {
    static var previews: some View {
        StandardColorsView()
            .preferredColorScheme(.dark)
    }
}
