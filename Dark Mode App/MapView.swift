//
//  MapView.swift
//  Dark Mode App
//
//  Created by Marius Malyshev on 05.11.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        VStack {
            Text("London")
                .font(.largeTitle)
            Text("MapKit")
                .font(.title)
            Map(coordinateRegion: .constant(MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)))
            )
                .frame(height: 250)
                .cornerRadius(20)
                .padding()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
