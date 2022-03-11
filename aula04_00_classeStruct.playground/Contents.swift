import UIKit

/*
 Classes e Struct
 
 Classes - são representadas pela keyword class. Podem somente herdar métodos e atributos de outras CLASSES, bem como podem ter mais de uma referência para a mesma instância (cuidado com isso).
 
 Struct - são representadas pela keyword struct. Não podem herdar métodos e atributos de outras classes/structs, porém podem assinar protocolos. Diferente das classes, seus elementos tem um valor/referência única
 
 */

//Exemplo de classe

class Person {
    
    private let name: String
    private let age: Int
    private let email: String
    
    init(name: String, age: Int, email: String) {
        self.name = name
        self.age = age
        self.email = email
    }
    
    func getPerson() {
        print("Dados: \(name), \(age), \(email).")
    }
    
}

var person = Person(name: "Victor", age: 25, email: "joao.victor07.br2@gmail.com")

let person2 = Person(name: "Nicole", age: 22, email: "nic@gmail.com")

print(person.getPerson())

print(person2.getPerson())

person = person2 // mais de uma ref, mesma instância - reference type

print(person.getPerson())

// exemplo struct

struct Bird {
    
    var birdName: String
    
    func fly() {
        print("Voando")
    }
    
    init(birdName: String) {
        self.birdName = birdName
    }
    
    func getBird() {
        print(birdName)
    }
}

var bird = Bird(birdName: "Arara")
print(bird.getBird())

var bird2 = Bird(birdName: "Canário")
print(bird2.getBird())

/* Exemplo de value type (referência de bird3 não muda), cada instância tem uma cópia exclusiva dela */

var bird3 = bird
bird.birdName = "Pombo"
print(bird.getBird())
print(bird3.getBird())

/* De acordo com a documentação da Apple o padrão seria utilizar structs. É mais seguro quando existe uma passagem por valor do que uma passagem por referência.
Quando estamos utilizando o conceito de herança a utilização de classe é recomendada. Quando precisamos controlar identidade também utilizamos classes, ela dá um override em métodos já existentes na classe pai quando são reescritos na classe filha.
 */



