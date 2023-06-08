import Foundation

// Função para desenhar um quadrado
func printASquareOf(squareSize: Int) {
    
    // Imprimindo a primeira linha
    for _ in 1...squareSize {
        print("* ", terminator: "")
    }
    print("")
    
    // Controlando a quantidade de linhas intermediárias
    for _ in 1...squareSize-2 {
        
        // Imprimindo uma das linhas centrais
        print("* ", terminator: "")
        for _ in 1...squareSize-2 {
            print("  ", terminator: "")
        }
        print("*")
        
    }
    
    // Imprimindo a última linha
    for _ in 1...squareSize {
        print("* ", terminator: "")
    }
    print("")
}

// Função para desenhar um retângulo
func printARectangleWith(base: Int, height: Int) {
    
    // Imprimindo a primeira linha do retângulo
    for _ in 1...base {
        print("* ", terminator:"")
    }
    print("")
    
    // Controlando a quantidade de linhas intermediárias
    for _ in 1...height-2 {
        
        // Imprimindo uma das linhas centrais
        print("* ", terminator: "")
        for _ in 1...base-2 {
            print("  ", terminator: "")
        }
        print("*")
        
    }
    
    // Imprimindo a última linha
    for _ in 1...base {
        print("* ", terminator: "")
    }
    print("")
}


// Função para desenhar um triângulo retângulo isósceles
func printATriangleWith(baseAndHeight: Int) {
    
    // Controle para saber qual linha está sendo impressa
    var heightSoFar = 1
    
    // Controle para a altura contada não passar da altura desejada
    if heightSoFar <= baseAndHeight {
        
        // Imprimindo o triângulo
        for _ in 1...baseAndHeight{
            
            // imprimindo quantidade de asteriscos igual o número da linha atual
            for _ in 1...heightSoFar {
                print("* ", terminator:"")
            }
            
            //Quebra de linha
            print("")
            
            // Alteração no controle na linha sendo impressa
            heightSoFar += 1
        }
    }
}



printASquareOf(squareSize: 5)
print("\n")

printARectangleWith(base: 10, height: 5)
print("\n")

printATriangleWith(baseAndHeight: 5)
