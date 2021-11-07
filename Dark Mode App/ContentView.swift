//
//  ContentView.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 05.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Text("List")
                    Image(systemName: "list.number")
                }
            RegistrationView_swift()
                .tabItem {
                    Text("Registration")
                    Image(systemName: "person.crop.circle")
                }
            MapView()
                .tabItem {
                    Text("Map")
                    Image(systemName: "map")
                }
            StandardColorsView()
                .tabItem {
                    Text("Colors")
                    Image(systemName: "eyedropper.halffull")
                }
            SkyView()
                .tabItem {
                    Text("Sky")
                    Image(systemName: "photo.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
