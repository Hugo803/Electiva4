//: Playground - noun: a place where people can play
//Nombre: 0Hugo Ernesto Jovel Martinez
//Carnet: 25-0539-2015

import UIKit

//Elabore un programa que calcule la suma de nos numeros cualquiera, donde los valroes deben ser de tipo float.
var valor1:Float = 3.345
var valor2:Float = 4.455
var resula:Float = 0.00 //A variable se asigna el resultado de operacion.

resula=valor1 + valor2

print("La suma de \(valor1) mas \(valor2) es : \(resula)")


// Elabore un programa que multiplique dos numeros cualquiera, donde los valores sean float y el resultado sea int.

import Foundation

var num1:Float = 10.8
var num2:Float = 20.2
var resul:Int = Int(num1 * num2)

print("Resultado entero de la suma: \(resul)")


// Dada la funcion Double.PI en Swift que permite obtnere el valor de PI, a utilizar el are de un circulo con radio 5, escribir el codido Swift para la realizacion del 4
//calculo, la formula A=PIr^2 (donde: A es area, r^2 radio al cuadradoy PI)

var area: Double = 0.0
var radio: Double = 5.0
var pi = Double.pi
area = pi * (radio*radio)

print("El area es : \(area)")
