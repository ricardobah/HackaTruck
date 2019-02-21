//Atv 1
//q1
import UIKit

func callFib(a : Int) -> Void{

    for c in 0...a{
        print(fibonacci(fib: c), terminator : " ")
    }

}

func fibonacci(fib : Int) -> Int {
    
    if(fib == 1 || fib == 0 ){
        return 1
     
    }else {
        return fibonacci(fib: fib-1) + fibonacci(fib: fib-2)
    }
    
    
    return fib
}



callFib(a:4)

print("")


//q2

func isArmstrong(numero : Int ){
    let _length = String(numero).characters.count
    var num = numero
    var count = 0
    while(num > 0){
        count += Int(pow(Double(num).truncatingRemainder(dividingBy: 10.0),Double(_length)))
        num/=10
    }
    if(count==numero){
        print("Yes")
    }else{
        print("No")
    }
}


isArmstrong(numero:153)




//q3


/*Escreva uma classe "MaquinaDeKaraoke" contendo um método “InsereMusica”, que insira músicas em uma lista, e outro método “RemoveMusica", que remova a música passada como argumento para o método.*/






class MaquinaDeKaraoke {

    var musicas : [String] = []
    
    
    func getMusicas() -> Void {
        print(musicas)
        
    
    }
    
    func addMusica(nome : String) -> Void{
        musicas.append(nome)
    }
    
    func removeMusica(nome : String){
        
       
            musicas.remove(at: Int(musicas.index(of: nome)!))
        
    }

}


var a = MaquinaDeKaraoke()
a.addMusica(nome: "fear of the dark")
a.addMusica(nome: "the trooper")
a.addMusica(nome: "Snow")
a.getMusicas()
a.removeMusica(nome: "Snow")
a.getMusicas()



