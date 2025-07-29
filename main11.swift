import Foundation

func dobro(a: Int) -> Int {
let resultado = a * 2
return resultado
} 

print("Digite um numero:")
let result = Int(readLine()!)!

print(dobro(a: result))