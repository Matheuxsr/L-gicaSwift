import Foundation 

print("Informe o valor:")

var par = 0
var contador = 0 
let numero = Int(readLine()!)!

while contador <= numero {
    if contador % 2 == 0 {
        par += 1
    }
    contador += 1
} 
print(par)


 