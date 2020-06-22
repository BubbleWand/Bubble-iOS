//
//  MapView.swift
//  Bubble
//
//  Created by Jessica Trinh on 6/21/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import SwiftUI
import MapKit

// Map View
struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 37.773972, longitude: -122.431297)
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Preview: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
