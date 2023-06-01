//
//  MapView.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 29/05/23.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    // MARK: - Propriedades
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - Body
    
    var body: some View {
        // MARK: - 1. Basic Map
//        Map(coordinateRegion: $region)
        
        // MARK: - 2. Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            //: (A) Pin: Old Style - Always Static
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            //: (B) Marker: New Style - Always Static
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            //: (C) Custom Basic Annotation - Interactive
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //: Annotation
        })
        
    }
}

// MARK: - Preview

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
