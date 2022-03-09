import UIKit

/*
 Funções:
 
 As funções são representadas pela keyword func e podem ou não ter:
 
 I. Um retorno - representado por '->' indicam um return para aquela func
 
 II. Um parâmetro - exemplo func people(name: String)
 
 III. Um apelido para o parâmetro - exemplo
 func old(bornAt year: Int)
 
 IV. Um parâmetro oculto - exemplo func car(_carName: String). Oculta-se um parâmetro usando '_'
 
 */

//Exemplos

func people(name: String) {
    print(name)
}

people(name: "Victor")

func age(bornAt year: Int) {
    print(year)
}

age(bornAt: 1996)

func car(_ carName: String) -> String {
    let sentence = "my car: \(carName)"
    return sentence
}

print(car("Jeep"))


