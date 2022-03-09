import UIKit

//declaração explícita
let peopleAndAge: [String: Int] = ["Victor": 25]

print(peopleAndAge)

//Optional
print(peopleAndAge["Victor"])

//dicionario com multiplos elementos

let peopleAndAge2: [[String: Int]] = [["Victor": 25], ["Pedro": 20], ["Joana": 23]]

print(peopleAndAge2)

//acessando o elemento
print(peopleAndAge2[1])

