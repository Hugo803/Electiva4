//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Escriba codigo dentro de un area de juegos SWIFT que reste dos flotadores, y el resultado se almacene como un numero entero. Tenga en cuenta que no se produce redondeo.

var numero1:Float=90.60
var numero2:Float=80.60
var resultado:Float=0
resultado = numero1 - numero2

let resultadoentero:Int=Int(resultado)

print("El numero 1 es: \(numero1) tipo Float es: \(resultado)")
print("El numero 2 es: \(numero2) tipo Float es: \(resultado)")
print("El resultado de tipo Float es: \(resultado)")
print("El resultado de tipo entero es: \(resultadoentero)")
