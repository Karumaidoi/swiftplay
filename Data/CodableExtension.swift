//
//  File.swift
//  
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation

extension Bundle {
    // Where T is generic type - It can decode any json data
    func decode<T: Codable>(_ file:String) -> T {
        // Locating The JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Unable to locate json")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("No data from the URL")
        }
        
        let decoder = JSONDecoder();
        
        // Decode the data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Unable to decode json")
        }
        
        return loaded;
    }
}
