//
//  File.swift
//  
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let sources: [String]
    
    
    // Computed Properties
    var image: String {
        return "No image";
    }
}
