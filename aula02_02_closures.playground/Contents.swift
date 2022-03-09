import UIKit

/*
 Closures - Swift

 Closures são basicamente funções anônimas que podem ser consideradas um "pacote" de funcionalidades que podem ser passadas.
 */

 //Exemplo:

 // Supondo que temos um array:

 let array  =  [6, 2, 3, 9, 4, 1]

/* E queremos transformar este array com .map somando +1 a todos elementos. Para isso precisamos primeiramente criar uma func com esta lógica para passarmos em nosso array.map:
 */

  func addOne(n1: Int) -> Int {
     return n1 + 1
  }
  
  array.map(addOne)

 /* Para reduzir o tamanho deste código e o deixar mais elegante, podemos usar uma Closure no lugar desta função e passar ela como parâmetro:
  */
  
 /*
 Transformando a função em Closure :
 1.Remover keyword func.
 2.Remover o nome.
 3.Colocar a primeira chave no início e a keyword in no lugar dela.
  */

 // Na prática:
  
 /*
  { (n1: Int) -> Int in
     return n1 + 1
  }
  */
  
  /* A partir de agora, já podemos colocar a closure no array.map:
   */
  
  array.map( {(n1: Int) -> Int in
  return n1 + 1
 })
  
 /* Entretanto, este código pode ser ainda mais reduzido, uma vez que usando closures, podemos usar o type inference do swift assim como o retorno implícito para remover o tipo e retorno:
  */
  
  array.map({(n1) in n1+1})
  
/* Podemos remover também todo o resto usando a anotação curta para os parâmetros - $0, $1, $2… Portanto, temos o seguinte:
 */

 array.map({$0 + 1})
  
 /* Há no Swift uma sintaxe especial para quando o último parâmetro de uma função é uma closure conhecida por Trailing Closure Syntax, que permite remover os parêntesis e passar a função direto nas chaves, ficando assim:
  */

 array.map{$0 + 1}
  
 print(array.map{$0 + 1})
