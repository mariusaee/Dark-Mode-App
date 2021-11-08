//
//  MapView.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 05.11.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region)
                .navigationTitle("MapKit")
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
