import UIKit

/*
 O que é uma pilha?
 
 Pilha ou Stack é uma estrutura de dados que segue uma ordem particular em termos de quais operações são realizadas (LIFO - last in first out). Ela seria a abstração de uma pilha de coisas no mundo real. Por exemplo uma pilha de livros, podemos apenas colocar ou remover um livro no topo da pilha.
 */

class Pilha {
    
    //MARK: -Pilha usando array
    
    var pilhaDeLivros: [String] = ["Clean Code", "Arquitetura Limpa", "Refatoração..."]
    
    func pushElement(livro: String) {
        pilhaDeLivros.insert(livro, at: 0)
    }
    
    func popElement() {
        print("Removido: \(pilhaDeLivros.removeFirst())")
    }
    
    func firstBook() {
        print(pilhaDeLivros[0])
    }
    
    func clearPilha1() {
        pilhaDeLivros.removeAll()
    }
    
    func allBooks() {
        print(pilhaDeLivros)
    }
    
    //MARK: -Pilha usando Dicionário
    
    var pilhaDeLivros2: [[String: Int]] = [["Clean Code": 2008], ["Arquitetura Limpa": 2019]]
    
    func addElement(element: [String: Int]) {
        pilhaDeLivros2.insert(element, at: 0)
    }
    
    func removeElement() {
        pilhaDeLivros2.remove(at: 0)
    }
    
    func clearPilha2() {
        pilhaDeLivros2.removeAll()
    }
    
    func firstBookTitle() {
        print(pilhaDeLivros2[0])
    }
    
    func allBooksAndYear() {
        print(pilhaDeLivros2)
    }
    
}

//MARK: Métodos Array
var pilha = Pilha()

pilha.allBooks()

pilha.pushElement(livro: "Psicologia das Cores")
pilha.allBooks()

pilha.popElement()
pilha.allBooks()

pilha.clearPilha1()
pilha.allBooks()

//MARK: Métodos Dicionário

pilha.allBooksAndYear()
pilha.firstBookTitle()

pilha.addElement(element: ["Psicologia das cores": 2012])
pilha.firstBookTitle()
pilha.allBooksAndYear()

pilha.removeElement()
pilha.allBooksAndYear()

pilha.clearPilha2()
pilha.allBooksAndYear()




