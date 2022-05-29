//: Playground - noun: a place where people can play
//Nombre: 0Katherine Guadalupe Hernandez de la Cruz
//Carnet: 25-1341-2016

import UIKit

//Elabore un programa que calcule la suma de nos numeros cualquiera, donde los valroes deben ser de tipo float.
var valor1:Float = 26.345
var valor2:Float = 13.455
var resula:Float = 0.00 //A variable se asigna el resultado de operacion.

resula=valor1 + valor2

print("La suma de \(valor1) mas \(valor2) es : \(resula)")


//Elabore un programa que calcule dos numero cualquiera, donde los valores sean float y el resultado sea int.
var valor3:Float = 18.345
var valor4:Float = 40.455
var result:Float = 0.00 //A variable se asigna el resultado de operacion.

result = valor3 * valor4
print("La mulplicacion de \(valor3) por \(valor4) es : \(result)")


// Dada la funcion M_PI en Swift que permite obtnere el valor de PI, a utilizar el are de un circulo con radio 5, escribir el codido Swift para la realizacion del 4
//calculo, la formula A=PIr^2 (donde: A es area, r^2 radio al cuadradoy PI)

var area: Double = 0.0
var radio: Double = 5.0
var pi = Double.pi
area = pi * (radio*radio)

print("El area es : \(area)")
