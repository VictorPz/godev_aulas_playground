import UIKit

/*
 Optional:
 
 I.  Identificada a partir de uma '?' em sua tipagem
 II. Nil-coalescing operator - use '??' Para suprir um valor default na variável
 
 Formas de safe unwrapping
 
 if let e guard let
 
 *guard let aparece dentro de uma func e caso não seja preenchido ele para a execução daquela func

 Forced unwrapping - usa '!' para afirmar que aquela variável vai ter um valor garantido. Caso não tenha, pode ocorrer um fatal error - se for usar, tomar cuidado.
 */

//exemplo if let:

var message: String?

message = "Hello"

if let message = message {
    print(message)
}

//exemplo guard let

func rename(optionalName: String?) -> String {
    guard let stringName = optionalName else {return "Enter a name!"}
    
    return stringName
}

print(rename(optionalName: "Vic"))
print(rename(optionalName: nil))

func image(photo: UIImage?) -> UIImage {
    guard let image = photo else {return UIImage(named: "defaultError")!}
    return image
}

