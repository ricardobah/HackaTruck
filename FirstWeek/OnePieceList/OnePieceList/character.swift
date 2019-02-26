//
//  character.swift
//  OnePieceList
//
//  Created by student on 25/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import Foundation


class Character {
    
    let name : String
    let image : String
    let fruit : String
    let filiation : String

    init(Name : String, Image : String, Fruit: String, Filiation : String){
        self.name = Name
        self.image = Image
        self.fruit = Fruit
        self.filiation = Filiation
        
        
    }
    
    
}



class dbCharacteres{
    static var Chars : [Character] = [
        Character(Name: "Luffy", Image: "luffy", Fruit: "Gomu Gomu No Mi", Filiation: "StrawHat Pirats"),
        Character(Name: "Sanji", Image: "sanji", Fruit: "N/A", Filiation: "StrawHat Pirats"),
        Character(Name: "Zoro", Image: "zoro", Fruit: "N/A", Filiation: "StrawHat Pirats"),
        Character(Name: "Nami", Image: "nami", Fruit: "N/A", Filiation: "StrawHat Pirats"),
        Character(Name: "Chew", Image: "chew", Fruit: "N/A", Filiation: "Arlong Pirates"),
        
        ]

    static func getCharacteres() -> [Character]{
        
        return Chars
    }
    
    
    static func getByName(name: String) -> Character?{
        
        for i in Chars{
            if(i.name == name){
            return i
            }
            
        }
        return nil
    }
    
    
}
