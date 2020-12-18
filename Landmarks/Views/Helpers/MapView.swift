//
//  MapView.swift
//  Landmarks
//
//  Created by Abdul R. Arraisi on 17/12/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone 12"], id:\.self) { item in
            MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .previewDevice(PreviewDevice(rawValue: item))
                .previewDisplayName(item)
        }
    }
}
