import Foundation

print("Digite uma mensagem")

let entrada: String? = readLine()

if let texto = entrada {
    print("Voce digitou\(texto)")
} else {
    print("Nao foi digitado")
}