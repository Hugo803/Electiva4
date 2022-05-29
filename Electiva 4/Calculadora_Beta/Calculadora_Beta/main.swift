//  main.swift
//  Calculadora_Beta


import Foundation

/* Realizar un programa que realice las 4 operaciones basicas, en atencion a peticion del usuario, y debe guardar cada operacion, para que el usuario poueda ver al final todas las operaciones que ha realizado.
 */

var historialActividad:[String]=[String]() //ho
var historialCantidad:[Double]=[Double]() //hv

func calculadora() {
    var prefer = true //tk
    var continuar = true //bda
    var opcion = 0
    var tipo:String=""
    var num1 = 0.00
    var num2 = 0.00
    var resultado = 0.00
    
    print(" Bienvenido ")
    
    while prefer {
        
        menuOpciones()
        opcion = Int(getInputText())!
        if opcion == 5
        {
            if historialCantidad.count > 0 {
                mostrarHistorial(arrayValues: historialCantidad, arrayOperacion: historialActividad)
            }else{
                print("No hay operaciones realizadas")
            }
        }
        else if opcion > 0 && opcion < 5{
            print("Digite el primer numero")
            num1 = Double(getInputText())!
            print("Digite el segundo numero")
            num2 = Double(getInputText())!
        continuar = true
            if opcion == 1 {
                resultado=sumar(num1: num1, num2: num2)
                tipo="SUMA"
            } else if opcion == 2 {
                resultado = restar(num1: num1, num2: num2)
                tipo="RESTA"
            } else if opcion == 3 {
                resultado=multiplicar(num1: num1, num2: num2)
                tipo="MULTIPLICACION"
            } else if opcion == 4 {
                if num2 != 0 {
                    resultado = dividir(num1: num1, num2: num2)
                    tipo="DIVISION"
                }else{
                    continuar = false
                    print("no se puede dividr entre cero")
                }
            }
            else{
                resultado = 0.00
                print("opcion invalida")
                continuar = false
            }
            
            if continuar {
                // mostrar resultado
                print("EL resultadio de la \(tipo) es: \(resultado)")
                historialCantidad.append(resultado)
                historialActividad.append(tipo)
                print ("Desea realizar otra operacion Si= S o No= N ")
                tipo = getInputText()
               
                if tipo == "N" || tipo == "n" {
                    prefer = false
                }
            }
        } else {
            print("Opcion invalida")
        }
    }
}



func menuOpciones() {
    print("¬¬¬¬¬¬ Realizar una operacion ¬¬¬¬¬")
    print("¬¬¬¬¬¬ Digite 1 para sumar ¬¬¬¬¬")
    print("¬¬¬¬¬¬ Digite 2 para restar ¬¬¬¬¬")
    print("¬¬¬¬¬¬ Digite 3 para multiplicar ¬¬¬¬¬")
    print("¬¬¬¬¬¬ Digite 4 para dividir ¬¬¬¬¬")
    print("¬¬¬¬¬¬ Digite 5 para ver historial. ¬¬¬¬¬")
}

func mostrarHistorial(arrayValues: [Double], arrayOperacion: [String]){
    var i = 0
    print("¬¬¬ Historial de Operaciones ¬¬¬ ")
    for itemHistorial in arrayValues{
        print("\(i+1)-) Operacion \(arrayOperacion[i]) Resultado \(itemHistorial)")
        i=i+1
    }
    
}

func getInputText() -> String {
    var input = ""
    input=NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    return input
}

func sumar (num1:Double, num2:Double) -> Double {
    var resultado:Double = 0.00
    resultado = num1 + num2
    return resultado
}

func restar (num1:Double, num2:Double) -> Double {
    var resultado:Double = 0.00
    resultado = num1 - num2
    return resultado
}

func multiplicar (num1:Double, num2:Double) -> Double {
    var resultado:Double = 0.00
    resultado = num1 * num2
    return resultado
}

func dividir (num1:Double, num2:Double) -> Double {
    var resultado:Double = 0.00
    resultado = num1 / num2
    return resultado
}
print("¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬¬")
calculadora()
