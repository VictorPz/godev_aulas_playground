import UIKit

// Incrementos e Operadores Lógicos

/*
 Operadores:
 < - menor
 > - maior
 <= - menor ou igual
 >= - maior ou igual
 == - igual
 != - não igual
 =  - atribuição
 !  - inversão
 
 || - OU (uma condição precisa ser true)
 && - E (ambas condições precisam ser true)
 
 += ou -= - Incremento/Decremento
 
 obs: Comparação de strings acontece de forma alfabética de acordo com a primeira letra, caso eu use .count ele conta o número de caracteres.
 */

//exemplos:

let n1 = 10
let n2 = 20

func isMinor(number1: Int, number2: Int) -> Bool {
    let compairValues = number1 < number2
    return compairValues
}

print("Func de comparação: \(isMinor(number1: n1, number2: n2))")

//exemplo string

let name: String = "Victor"
let lastName: String = "Pizetta"

let compair = name > lastName
let compair2 = name.count > lastName.count
print("Comparação alfabética resultado: \(compair)")
print("Comparação de caracteres resultado: \(compair2)")

// exemplo inversão

let isHidden = true
print("Exemplo inversão: \(!isHidden)")

//exemplo || e &&

let provaTeorica = true
let provaPratica = true

if provaTeorica && provaPratica == true {
    print("Carteira de motorista concedida")
} else {
    print("Tente novamente!")
}

let paoDeQueijo = true
let pizza = false

if paoDeQueijo || pizza == true {
    print("Pode mandar!")
} else {
    print("Não tem nada nesse lugar!")
}

//exemplo incremento

var number = 9
number += 1
print(number)






