//
//  MapView.swift
//  swiftplay
//
//  Created by Alex Maina on 21/01/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion  = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599);
        var zoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0);
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: zoomLevel);
        
        return mapRegion;
    }();
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region)
                .overlay(
                    HStack(alignment: .center, spacing: 12) {
                        Image(systemName: "safari")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48, height: 48, alignment: .center)
                        
                        VStack(alignment: .center, spacing:3) {
                            HStack {
                                Text("Latitude")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                Spacer()
                                
                                Text("\(region.center.latitude)")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }//: HSTACK
                            
                            Divider()
                            
                            HStack {
                                Text("Longitude")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.accentColor)
                                Spacer()
                                
                                Text("\(region.center.longitude)")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                            }//: HSTACK
                            
                            
                        }//: VSTACK
                    }
                        .padding(.vertical, 12)
                                        .padding(.horizontal, 12)
                                        .background(
                                            Color.black
                                                .cornerRadius(8)
                                                .opacity(0.6)
                                        )
                                        .padding()
                    , alignment: .top
                )
                .navigationBarTitle("Map", displayMode: .inline)
        }
      
           
    }
}


