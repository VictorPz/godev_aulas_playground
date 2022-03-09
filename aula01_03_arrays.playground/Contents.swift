import UIKit

// declaração implícita

var carros = ["Fusca", "Gol", "Opala", "Ferrari", "Maverick"]

//declaração explícita

var números: [Int] = [1, 2, 3, 4, 5]

//OBS: Posso ter quebra de linha após as vírgulas

//Inserção de elementos

carros.append("Porsche")

//Inserção de elementos em determinada posição

carros.insert("Jeep", at: 0)

//Removendo elementos
//carros.removeFirst(), removeLast(), removeAll()...

carros.remove(at: 1)
print(carros)

//número de elementos:
print(carros.count)

//carro aleatório
if let carros = carros.randomElement() {
print(carros)
} else {
    print("Lista vazia")
}

//typealias - Cria um novo tipo

typealias NewString = String

var name: NewString = "Victor"

typealias NewTuple = (String, Int)

var tuple: NewTuple = ("Victor", 25)
