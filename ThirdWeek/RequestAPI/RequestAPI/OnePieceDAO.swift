//
//  EstacionamentoDAO.swift
//  AppIOT
//
//  Created by Bruno Corte on 14/07/17.
//  Copyright © 2017 Felipe Corte. All rights reserved.
//

import Foundation

class Estacionamento {
    
    var nome: String
    var endereco: String
    var telefone: String
    var proprietario: String
    
    var carro: [Carro]
    
    init(json: [String: AnyObject]) {
        self.nome = json["nome"] as? String ?? ""
        self.endereco = json["endereco"] as? String ?? ""
        self.telefone = json["telefone"] as? String ?? ""
        self.proprietario = json["proprietario"] as? String ?? ""
        
        self.carro = [Carro]()
        
        if let carros = json["carro"] as? [ [String: String] ] {
            for jsonCarro in carros {
                let novoCarro = Carro(json: jsonCarro)
                
                self.carro.append(novoCarro)
            }
        }
    }
}

class Carro {
    var modelo: String
    var ano: String
    var cor: String
    
    init(json: [String: String]) {
        self.modelo = json["modelo"] ?? ""
        self.ano = json["ano"] ?? ""
        self.cor = json["cor"] ?? ""
    }
}

class EstacionamentoDAO {
    
    static func getEstacionamentos (callback: @escaping ((Estacionamento) -> Void)) {
        
        let endpoint: String = "https://estacinamento-teste-aula.mybluemix.net/"
        
        guard let url = URL(string: endpoint) else {
            print("Erroooo: Cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if error != nil {
                print("Error = \(String(describing: error))")
                return
            }
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(String(describing: responseString))")
            
            DispatchQueue.main.async() {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
                        
                        let estacionamento = Estacionamento(json: json[0])
                        
                        let nomeEstacinamento = estacionamento.nome
                        
                        print("\(nomeEstacinamento) tem \(estacionamento.carro.count) carros.")
                        
                        callback(estacionamento)
                        
                    }else {
                        
                        print("fudeuuuu")
                    }
                } catch let error as NSError {
                    print("Error = \(error.localizedDescription)")
                }
            }
            
            
        })
        
        task.resume()
    }
    
    
}
