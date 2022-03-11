import UIKit

/* Protocolos:
 Declarados com a keyword protocol e a primiera letra sempre maiúscula define um padrão que quem adota deve seguir/ assinar
 */

/* Exemplo
 Suponha que temos um método voar() dentro de uma classe Pássaro. Porém queremos criar também um objeto avião. Seria incorreto herdar para o avião os atributos da classe pássaro somente para adotar o método voar, uma vez que o avião também ganharia a capacidade de comer e colocar ovos kkkk. Para separar a capacidade de voar para ambas classes então, podemos adotar um protocolo.*/

protocol PodeVoar {
    func voar()
}

class Passaro {
    func comer(){
        print("Comendo")
    }
    func porOvos() {
        print("Chocando um novo filhote!")
    }
}

class Penguim: Passaro {
    override func comer() {
        print("Peixes!")
    }
    override func porOvos() {
        print("Novo picolé a caminho!")
    }
    
    func podeNadar() {
        print("Excelente nadador!!!")
    }
    
    //Apesar de ser uma ave não pode voar =/
}

class Canario: Passaro {
    
    override func comer() {
        print("Comendo")
    }
    
    override func porOvos() {
        print("Chocando um novo filhote!")
    }
}

extension Canario: PodeVoar {
    func voar() {
        print("Bate suas asas e voa!")
    }
}

struct Aviao {
    func ligandoMotores() {
        print("Sai de perto da turbina!!!")
    }
}

extension Aviao: PodeVoar {
    func voar() {
        print("Voando sem bater asas ou botar ovos!!!")
    }
}
