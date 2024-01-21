//
//  File.swift
//  
//
//  Created by Alex Maina on 21/01/2024.
//

import Foundation

extension Bundle {
    // The <T:Codable> is to allow work with Generics. They help us work with all types
    func decode<T: Codable>(_ file: String) ->  T {
        //1. Locate the json data
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Unable to get the bundle");
        }
        
        //2. Create the propery for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load from data");
        }
        
        //3. Create JSON Decode
        let decoder = JSONDecoder();
        
        //4. Decode data and collect the info
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode data from bundle");
        }
        
        //5. Return ready to use data
        return loaded;
    }
}
