//
//  File.swift
//  
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation
import SwiftUI

class AnimalStateData: ObservableObject {
    @State var animals: [Animal] = Bundle.main.decode("videos.json");
    @Published var animalsData: [Animal] = [];
    
    init() {
        fetchAnimalData();
    }
    
    // Fetching all animals
    func fetchAnimalData()  {
        animalsData = animals;
    }
    
    // Shuffling animals and updating the State
    func shuffledata() {
        animalsData = animalsData.shuffled();
    }
    
    // Removing items by filtering them
    func removeAnimal(animal: Animal) {
        animalsData = animalsData.filter {
            (animalCurr) -> Bool in animalCurr.name != animal.name;
        }
    }
}
