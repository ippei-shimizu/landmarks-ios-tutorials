//
//  MapView.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/13.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegin(coordinate)
            }
    }
    
    private func setRegin(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
        center: coordinate,
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
