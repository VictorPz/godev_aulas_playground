import UIKit
/*
 godev aula 01_00
 
 var = cria variáveis
 let = cria constantes
 
 declaração explícita do tipo: var name: String = "Victor"
 
 Tipos de variáveis:
 
 Int = Números Inteiros
 
 Double = Números com ponto flutuante ex: 3.5 (maior precisão e range)
 
 Float = Também números com pontos flutuantes ex: 3.5
 
 Bool = true/false
 
 String = caracteres
 
 Tipos Complexos:
 
 UIButton
 UILabel
 */

//Exemplos:

var name: String = "Victor"
name = "Vic"
print(name)

var lastName: String = "Pizetta"

let age: Int = 25
print(age)

//Interpolação de strings ex:

var completeName: String = "Meu nome é \(name) \(lastName)"
print(completeName)

//Tipos Complexos:

private let button: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.titleLabel?.text = "Botão"
    button.titleLabel?.textColor = .black
    button.titleLabel?.textAlignment = .center
    button.backgroundColor = .red
    return button
}()




