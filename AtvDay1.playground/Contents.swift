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
    var _length = String(numero).characters.count
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

