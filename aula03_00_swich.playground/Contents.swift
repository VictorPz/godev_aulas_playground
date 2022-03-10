import UIKit

/* Swich/case/default - Baseado em uma condição, porém mais clean que vários ifs encadeados e pode englobar ranges como por exemplo 1...5, 1..<4.
 */

var notaMedia = 8.5

switch notaMedia {
case 1...4:
    print("Você está abaixo da média")
case 5..<7:
    print("Você está na média ")
case 7...9:
    print("Você foi muito bem!")
default:
    print("Parabéns!!!")
}

/*
 Enum - Definida como um tipo comum para um grupo de valores relacionados e permite que você trabalhe com esses valores de forma segura no código. (Type-safe)
 */

enum FinalGrade {
    
    case Approved
    case Reapproved
    case remedialClass
}

let grades = FinalGrade.Approved

switch grades {
case .Approved:
    print("Summer here we go!!!")
case .Reapproved:
    print("My mom is gonna kill me =/")
case .remedialClass:
    print("I need to learn a little more")
}

/*
 Acessando valores do enum - podemos utilizar .rawValue
 */

enum State: String {
    case sucess = "Efetuado com sucesso"
    case error1 = "Falha, tente novamente"
}

print(State.sucess.rawValue)

/*
 Passando o Enum como parametro da função
 */

enum BankDeposit {
    case inValue(Int)
    case inCheck(Bool)
}

func makeDeposit(value: BankDeposit) {
    
    switch value {
    case .inValue(let values):
        print("O valor depositado é \(values)")
    case .inCheck(let check):
        print("inCheck: \(check)")
    }
}

let deposit = BankDeposit.inValue(400)
makeDeposit(value: deposit)




