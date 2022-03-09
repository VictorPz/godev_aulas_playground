import UIKit

let isHidden = true
let isEnable = false

if isHidden {
    print("Verdadeiro")
} else if isEnable {
    print("Verdadeiro")
} else {
    print("Falso")
}

let company: String = "Apple"
let system: String?

//if ternário
system = company == "Apple" ? "iOS" : "Andoid"

if let system = system {
    print(system)
} else {
    print("campo não preenchido")
}
