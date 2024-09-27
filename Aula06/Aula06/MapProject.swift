//
//  ContentView.swift
//  Aula06
//
//  Created by Turma01-7 on 27/09/24.
//

import SwiftUI
import MapKit

struct Header : View{
    var body : some View {
        Text("Cabecalho")
    }
}

struct PlacesList : View {
    var body: some View {
        Text("Lista de lugares")
    }
}

struct MapProject: View {
    @State private var lat: Double = -9.390631;
    @State private var long: Double = -40.503255;
    @State private var zoom: Double = 0.05;
        
    @State private var position = MapCameraPosition.region(
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: -9.390631,
                    longitude: -40.503255),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.05,
                    longitudeDelta: 0.05
                )
            )
    )
    
    var body: some View {
        ZStack {
            Map(position: $position)
            VStack {
                Header()
                Spacer()
                PlacesList()
            }
        }
    }
}

#Preview {
    MapProject()
}
