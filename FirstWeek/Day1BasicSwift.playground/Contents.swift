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
 

var filme = (nome: "Jurassic Park", ano: 1993, director: "Steven Spielbert", IMDB: 8.1)
print("\(filme.nome) estreou em \(filme.1)")



var 👹 = ["Thomas", "Adailton"]
// 1. Adicione um novo nome no array
👹.append("JavaScript")

// 2. Descubra a posição do nome Lucas
👹.index(of: "Thomas")
// 3. Remova o nome Lucas
👹.remove(at: 1)
// 4. Ordene o array em ordem alfabética
👹.append("Abb")
👹.sort()


var asd  = 10

switch(asd){
case 10:
    print(asd)
case 1...9:
    print("mi")
default:
    print("Nada")
}


print("For1")
for numero in 1...3 {
    print(numero)
}
print("For2")
for numero in 1..<3 {
    print(numero)
}

print("For3")
for numero in (1...3).reversed() {
    print(numero)
}

// Modificando o passo
print("For4")
for numero in stride(from: 1, to: 8, by: 2) {
    print(numero)
}


var numero = 0

while numero <= 6 {
    numero += 1
    print(numero)
}


repeat {
    print("Pelo menos uma vez", terminator: ".")
} while false


enum Side: String {
    case L = "Light"
    case D = "Dark"
}

enum Status: Int {
    case Ativo = 0
    case Inativo = 1
    case Bloqueado = 2
}



var statusUsuario: Status = Status.Ativo

print(statusUsuario)

switch(statusUsuario) {
case .Ativo:
    print("Usuário ativo! :-)")
case .Inativo:
    print("Atenção! Usuário inativo.")
case .Bloqueado:
    print("Usuário bloqueado :-(")
}



class Humano {
    // Propriedades armazenadas
    let nome: String
    let sobrenome: String
    var idade: Int
    
    // Propriedades computadas
    var nomeCompleto: String {
        return "\(self.nome) \(self.sobrenome)"
    }
    
    //  Construtor
    init(nome: String, sobrenome: String, idade: Int) {
        // 'self' = this
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
    }
    
    // Método
    func falar() -> String {
        return "Olá, meu nome é \(self.nomeCompleto) e eu tenho \(self.idade) anos."
    }
    
    // Método de classe -> da p usar static e chamar sem instanciar
    static func isMamifero() -> Bool {
        return true
    }
}

// Herança
// Apenas herança simples
// Após o nomes da classe, coloque ':' e o nome da classe de onde herdar
class Atleta: Humano {
    var esporte: String
    
    init(nome: String, sobrenome: String, idade: Int, esporte: String) {
        self.esporte = esporte
        // Inicializador da classe pai
        super.init(nome: nome, sobrenome: sobrenome, idade: idade)
    }
    
    // Sobrescrita do método de falar do Humano
    override func falar() -> String {
        return "Meu nome é \(self.nomeCompleto), \(self.idade) anos, e eu pratico \(self.esporte)."
    }
    
    // Método do atleta apra praticar esporte
    func praticarEsporte() -> String {
        return "\(self.nome) está praticando \(self.esporte)."
    }
}

// Instanciado novos objetos
let human = Humano(nome: "Jon", sobrenome: "Doe", idade: 24)
let atlet = Atleta(nome: "Mary", sobrenome: "Jane", idade: 20, esporte: "curling")

// Vamos testar se um Atleta é um Humano
func isAtleta(pessoa: Humano) -> Bool {
    return pessoa is Atleta
}

isAtleta(pessoa: human)
isAtleta(pessoa: atlet)

// Os dois podem falar, pois os dois são Humanos
human.falar()
atlet.falar()

// Mas apenas o Atleta pratica esportes
atlet.praticarEsporte()



protocol TriAtleta {
    var energia: Int { get set }
    
    func correr() -> String
    func nadar() -> String
    func pedalar() -> String
}


class Pessoa: Atleta, TriAtleta {
    // Temos que implementar as propriedades que o protocolo pede
    var energia: Int = 10
    
    // E implementar os métodos do protocolo
    func correr() -> String {
        return "\(self.nome): Estou correndo!"
    }
    
    func nadar() -> String {
        return "\(self.nome): Estou nadando!"
    }
    
    func pedalar() -> String {
        return String("\(self.nome): Estou pedalando!")
    }
}

// Vamos testar agora
// Criamos uma função que recebe uma pessoa pra disputar o triatlo
func iniciarTriatlo(pessoa: Pessoa) {
    pessoa.correr()
    pessoa.nadar()
    pessoa.pedalar()
}

// Instaciamos um objeto da classe Pessoa
let thiago: Pessoa = Pessoa(nome: "Thiago", sobrenome: "Pereira", idade: 28, esporte: "natação")

// Iniciamos o triatlo com essa pessoa
iniciarTriatlo(pessoa: thiago)



//atv



protocol Diesel {
    var quantidadeDeCombustível: Int { get set }
    
    func injetarArAquecido() -> Void
    func injetarCombustívelSobPressão() -> Void
}

protocol Gasolina {
    var quantidadeDeCombustível: Int { get set }
    
    func ativarVela() -> Void
    func injetarCombustívelComAr() -> Void
}

class MotorDeCarro : Gasolina {
    
    var quantidadeDeCombustível: Int = 0
    func ativarVela(){
        print("ativou")
    }

    func injetarCombustívelComAr() -> Void{
     print("ativou")
    }
}

class MotorDeCaminhão : Diesel {
    
    
    var quantidadeDeCombustível: Int = 0
  /*  init(var a)
    {
        self.quantidadeDeCombustível = a
    }*/
    func injetarArAquecido() -> Void{
        print("ativou")
    }
    
    func injetarCombustívelSobPressão() -> Void{
         print("ativou")
    }

}







