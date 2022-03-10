import UIKit
import Darwin

func isPalindrome(word: String) -> Bool {
    let text = word.lowercased().filter {$0 != " "}
    return text == String(text.reversed())
}

print(isPalindrome(word: "Ovo"))
print(isPalindrome(word: "Arara"))
print(isPalindrome(word: "Socorram me subi no onibus em marrocos"))
print(isPalindrome(word: "Anotaram a data da maratona"))
print(isPalindrome(word: "A cera causa sua careca"))

//false

print(isPalindrome(word: "Aranha"))
print(isPalindrome(word: "Uma frase aleatoria"))
print(isPalindrome(word: "Maacarrao"))



