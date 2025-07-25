import Foundation

print("Digite o inicio")

let inicio = Int(readLine()!)!

print("Digite o fim")

let fim = Int(readLine()!)!

var duracao = 0

if fim < inicio {
   duracao = (24 - inicio) + fim
} else {
   duracao = fim - inicio
}

print("O jogo durou \(duracao)")