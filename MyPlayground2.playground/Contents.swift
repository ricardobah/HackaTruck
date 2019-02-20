import UIKit

var str = "Hello, playground"

let inteiro: Int = 10
let double: Double = 5.72
let string: String = "73"
// Conversão direta
let doubleFromInt: Double = Double(10)

let intFromDouble: Int = Int(double)

let stringFromInt: String = String(inteiro)
let stringFromDouble: String = "LeoGado"+String(inteiro)

// Conversão condicional
let intFromString: Int? = Int(string)
let doubleFromString: Double? = Double(string)

// Operador AND
var num1=10
var positiveSmallerThan100 = (num1 > 0) && (num1 < 100)

// Operador OR
var gender = "F"
var validGender = (gender.lowercased() == "f") || (gender.lowercased() == "m")


var resposta: Int

// 1. Quanto é 2 elevado a 8?
resposta = Int(pow(Double(2),Double(8)))// utilize a função pow

if resposta == 256 {
    print("Resposta correta!")
}

// 2. Qual a raiz quadrada de 196?
resposta = Int(sqrt(196))// utilize a função sqrt

if resposta == 14 {
    print("Resposta correta!")
}



/*
 let 😎 = ("Swift","C++","C#","Swift","fortran")
 let 💩 = ("Swift","C++","C#","Swift","fortran")
 print(😎.0)
 print(💩)
 var constantesMatematicas : [Double] = [3.14159, 2.718281, 1.611803]
 let numeroDeEuler = 0.577215
 
 constantesMatematicas.append(numeroDeEuler)
 
 for constante in constantesMatematicas{
 print(constante)
 
 }
 
 */

