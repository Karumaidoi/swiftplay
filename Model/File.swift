//
//  File.swift
//  
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation

struct Animal: Codable {
    let title: String
    let description: String
    let sources: [String]
    
    
    // Computed Properties
    var image: String {
        return "No image";
    }
}
