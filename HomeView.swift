//
//  HomeView.swift
//  swiftplay
//
//  Created by Alex Maina on 21/01/2024.
//

import SwiftUI

@available(iOS 16.0, *)
struct HomeView: View {
    // MARK: - PROPERTIES
    @State private var showSheet: Bool = false;
    @State private var animals: [Animal] = Bundle.main.decode("videos.json");

    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(animals) { animal in
                    NavigationLink(destination: VideoView(url: animal.sources[0])) {
                        Text(animal.name)
                    }
                }
                
            }//: VSTACK
            .sheet(isPresented: $showSheet) {
                SheetView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.large])
            }
            .navigationBarTitle("Chats", displayMode: .large)
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing) {
                    Button {
                        self.showSheet.toggle();
                    } label: {
                        Image(systemName: "paintbrush")
                            .foregroundColor(.accentColor)
                    }
                }//: TOOLBARITEM
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // Code to shuffle animals
                        self.animals = animals.shuffled();
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
        
    }
}


