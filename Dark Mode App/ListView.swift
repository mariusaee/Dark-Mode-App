//
//  ListView.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 05.11.2021.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(1...10, id: \.self) { number in
                NavigationLink(destination: Text("\(number)").font(.largeTitle)) {
                    Text("\(number)")
                }
                .navigationTitle("List View")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
