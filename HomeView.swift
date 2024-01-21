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
    @EnvironmentObject var viewModel: AnimalStateData
    @State private var showSheet: Bool = false;
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.animalsData) { animal in
                    NavigationLink(destination: VideoView( animal: animal)) {
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
//                        self.animals = animals.shuffled();
                        viewModel.shuffledata();
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


