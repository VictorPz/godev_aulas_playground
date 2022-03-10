import UIKit
import os

/*
 Programação funcional = Paradigma de programação, uma forma de se pensar, uma forma como entendemos a construção e a lógica de um programa.
 
 Sigla LHS e RHS - Left hand side e Right hand side.
 */

/*
 Manipulando Arrays de formas diferentes.
 .sorted() - ordem alfabética, mas podemos também passar funções como parametro (closures)
 */

var array = ["Ana", "João", "Pedro", "Matheus", "Ian", "Nicole"]

print(array.sorted())

array.sort { (lhs: String, rhs: String) -> Bool in
    lhs > rhs
}

print(array)

/*
 também podemos reproduzir essa closure de forma mais simpificada
 */

let alfabetica = array.sorted(by: <)
print(alfabetica)

/*
 .map = faz o mapeamento de cada objeto do seu array e possibilita trabalhar eles
 */

var array2 = [5,7,8,4,10,3,1,12]

let soma1 = array2.map { value in
    value + 1
}

print(soma1)

// Também pode ser feito assim:

let soma2 = array2.map({$0 + 2})
print(soma2)

/* Filter */

let filter = array2.filter { values in
    values >= 6
}
print(filter)

// ou

let filter2 = array2.filter({$0 >= 4})
print(filter2)

//ou

var media = 5

let filter3 = array2.filter({$0 > media})
print(filter3)

/*
 Reduce = vai efetuar uma operação com os elementos do array a partir de um valor inicial
 */

let reduce = array2.reduce(0,{$0 + $1})
print(reduce)

// ou

let reduce2 = array2.reduce(0, +)
print(reduce2)





