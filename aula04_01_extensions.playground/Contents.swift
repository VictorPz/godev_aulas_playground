import UIKit

/* Extensions:
 
 Declarada com a keyword extension e o nome da classe extendida, a extension pode ser usada de diversas formas, como por exemplo uma organizadora de código, ou seja, recebendo parâmetros solicitados por protocolos, para criação de métodos personalizados em classes já existentes (String por exemplo).
 */

//Exemplos:

protocol Notas {
    func nota()
}

class Aluno {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getName() {
        print(name)
    }
}

extension Aluno: Notas {
    
    func nota() {
        print("10")
    }
}

var aluno = Aluno(name: "Pedro")

print(aluno.getName())
print(aluno.nota())

//Exemplo2

extension String {
    func capitalizingFirst() -> String {
        return prefix(1).capitalized + dropFirst()
    }
}

let text = "treinamento iOS"
print(text.capitalizingFirst())

//Exemplo 3

/* Podemos criar com extension até cores personalizadas para o projeto, neste exemplo usamos #colorLiteral(
 
 Também funciona pra #imageLiteral(*/

extension UIColor {
    static let newBlack = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
}

let color: UIColor = .newBlack

extension UIImage {
    static let newIcon = UIImage(systemName:"gamecontroller")
}

func gameIcon() -> UIImage {
    guard let image: UIImage = .newIcon else {return UIImage(systemName: "bolt.slash")!}
    return image
}

let image = gameIcon()



