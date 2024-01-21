//
//  File.swift
//  
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation
import SwiftUI

class AnimalStateData: ObservableObject {
    @State var animals: [Animal] = Bundle.main.decode("vidoes.json");
    
    @Published var animalsData: [Animal] = [];
    
    init() {
        fetchAnimalData();
    }
    
    func fetchAnimalData()  {
        animalsData = animals;
    }
}
