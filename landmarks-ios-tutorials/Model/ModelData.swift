//
//  ModelData.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/13.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmark: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmark.filter {$0.isFeatured}
    }
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmark,
            by: {$0.category.rawValue}
        )
    }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
