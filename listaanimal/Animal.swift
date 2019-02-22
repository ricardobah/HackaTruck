//
//  Animal.swift
//  listaanimal
//
//  Created by student on 22/02/19.
//  Copyright © 2019 Ricardo Ribeiro. All rights reserved.
//

import Foundation




class Animal {


    let nome: String
    let especie: String
    
    let nomeDafoto: String
    
    
    init(nome: String, especie: String, nomeDaFoto: String){
        self.nome = nome
        self.especie = especie
        self.nomeDafoto = nomeDaFoto
    
    }


}





class dbAnimal{

    static func getAnimal() -> [Animal]{
    
        return [
        
            Animal(nome: "Leo", especie: "Gado", nomeDaFoto: "1"),
            Animal(nome: "Thomas", especie: "Camelo", nomeDaFoto: "2"),
            Animal(nome: "Bessa", especie: "Cangurivis", nomeDaFoto: "3"),
            Animal(nome: "Caiohhhh:", especie: "Piriquito", nomeDaFoto: "4"),
            Animal(nome: "Serva", especie: "Cirne", nomeDaFoto: "5")
            
        
        
        ]
    }





}
