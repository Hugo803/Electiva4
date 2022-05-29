//
//  main.swift
//  capitulo4
//
//  Copyright © 2022 development. All rights reserved.
//

import Foundation

// Imprimir en consola cantidad de intentos fallidos hasta adivinar el numero correcto generado en cada juego

// Imprimir en consola cantidad de veces que el usuario jugo en la aplicacion, cuando el usuario decida salir del juego.

var randomNumber = 1
var intentos:Int=0
var veces:Int=1
var userGuess: Int? = 1
var continueGuessing = true
var keepPlaying = true
var input = ""
func leer() -> String {
    var resultado=""
    resultado=NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    resultado = resultado.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    return resultado
}

while keepPlaying {
    randomNumber = Int(arc4random_uniform(101))
    print("The random number to guess is: \(randomNumber)")
    while continueGuessing {
        print("Pick a number between 0 and 100.")
        input = leer()
        userGuess = Int(input)
        if userGuess == randomNumber {
            continueGuessing = false
            
            // imprimiendo cantidad de intentos fallidos.
            print("Cantidad de intentos fallidos: \(intentos)")
            print("Correct number: \(randomNumber)")
            intentos=0
        } else if userGuess! > randomNumber {
            print("Your guess is too high elevado")
            intentos=intentos+1        }
        else{
            intentos=intentos+1
            print("Your guess is too low bajo")
        }
    }
    
    print ("Play Again? Y or N")
    input = leer()
    if input == "N" || input == "n" {
        
        // Imprimiendo total de jugadas realizadas.
        print("Cantidad de Juagadas realizadas: \(veces)")
        keepPlaying = false
    }
    continueGuessing = true
    veces=veces+1
}
