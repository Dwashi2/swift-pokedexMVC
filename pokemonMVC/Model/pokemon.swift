//
//  pokemon.swift
//  pokemonMVC
//
//  Created by Daniel Washington Ignacio on 28/07/21.
//

import Foundation



class Pokemon {
    
    var name: String?
    var number: Int?
    var info: String?
    var heigth: Double?
    var weigth: Double?
    var category: String?
    var habilities: String?
    var gender: [String]?
    var type: [String]?
    var weakness: [String]?
    var evolution: [String]?
    var avatar: String?
    var color: String?
    var green: Double?
    var red: Double?
    var blue: Double?
    var detailGreen: Double?
    var detailRed: Double?
    var detailBlue: Double?
    
    
    init(dictionary: [String: Any]) {
        
        self.name = dictionary["name"] as? String
        self.number = dictionary["number"] as? Int
        self.info = dictionary["info"] as? String
        self.heigth = dictionary["heigth"] as? Double
        self.weigth = dictionary["weigth"] as? Double
        self.category = dictionary["category"] as? String
        self.habilities = dictionary["habilities"] as? String
        self.gender = dictionary["gender"] as? [String]
        self.type = dictionary["type"] as? [String]
        self.weakness = dictionary["weakness"] as? [String]
        self.evolution = dictionary["evolution"] as? [String]
        self.avatar = dictionary["avatar"] as? String
        self.color = dictionary["color"] as? String
        self.green = dictionary["green"] as? Double
        self.red = dictionary["red"] as? Double
        self.blue = dictionary["blue"] as? Double
        self.detailGreen = dictionary["detailGreen"] as? Double
        self.detailRed = dictionary["detailRed"] as? Double
        self.detailBlue = dictionary["detailBlue"] as? Double
        
    }
    
}
