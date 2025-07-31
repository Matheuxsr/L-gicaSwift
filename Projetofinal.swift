import Foundation 

var opcaoFinal = -1 

func menu(){
    print("""
    1 - listar filmes
    2 - adicionar filmes
    
    """)
}

 func listarFilmes(lista: [String]) {
    var posicao = 0
    if lista.count == 0 {
        print("Sua lista nao tem nenhum filme")
 } else {
     for filmes in lista {
         print("\(posicao) - \(filmes)")
         posicao += 1
        }
    }
 }

func adicionarFilmes(lista: [String], filme: String) -> [String] {
    var listaInterna = lista
    listaInterna.append(filme)
    print("filme adicionado!")
    return listaInterna
}

func removerFilmes(lista: [String], posicao: Int) -> [String] {
    var listaInterna = lista
    listaInterna.remove(at: posicao)
    print("filme removido!")
    return listaInterna
}

var listaGlobal: [String] = []

repeat{ 
    menu()
    print("Digite uma opcao")
    
    guard let opcao = readLine(),
          let opcaoInt = Int(opcao) else {
              print("Erro: Texto foi digitado")
              continue
          } 
          
    opcaoFinal = opcaoInt
    
    switch opcaoFinal {
 
        case 1: 
            listarFilmes(lista: listaGlobal)
    
        case 2: 
            guard let filmeEscolhido = readLine() else {
                exit(1) 
            }
            listaGlobal = adicionarFilmes(lista: listaGlobal, filme: filmeEscolhido)

        case 0: 
            print("Finalizado")
        
        default: 
            print("Essa opcao nao existe")
    }
} while opcaoFinal != 0  