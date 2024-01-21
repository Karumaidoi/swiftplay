//
//  VideoView.swift
//  swiftplay
//
//  Created by Alex Maina on 21/01/2024.
//

import SwiftUI
import AVKit

struct VideoView: View {
    @EnvironmentObject var viewModel : AnimalStateData
    @Environment(\.presentationMode) var presentationMode
    
    var animal: Animal
    
    
    var body: some View {
        
        VStack {
            VideoPlayer(player: playUrlVideo(file: animal.sources.first!, type: "mp4"))
        }//: VSTACK
        .foregroundColor(.accentColor)
        .navigationBarTitle(animal.name, displayMode: .large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    viewModel.removeAnimal(animal: animal);
                    presentationMode.wrappedValue.dismiss();
                } label: {
                    Image(systemName: "trash")
                }
            }
        }
        }
}


