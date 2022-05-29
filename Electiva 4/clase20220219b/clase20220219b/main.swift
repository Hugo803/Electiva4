//
//  main.swift
//  clase20220219b
//
//  Created by Development on 4/11/22.
//  Copyright © 2022 Development. All rights reserved.
//

import Foundation

print("Hello, World!")

var val1:Int=9
var val2:Int=5
var resu:Int
resu=val1+val2
print("Resultado : \(resu)")
resu=4
if (resu>6) {
    print("El resultado es mayor de 6")
} else {
    print("El resultado es menor de 6")
}

//Elaborar un programa que realice los cuatro operaciones basicas, de dos numeros cualquiera tipo decimal, el proyecto a utilizardebe ser Command line tool, permitiendo decidir el calculo a realizar


var val3:Double
var val4:Double
var res1:Double
var opc:String=""
val3=7.04
val4=0.000
res1=0
opc="S"

/*
 valores para variables opc
 S = realiza Suma
 R = realiza Resta
 M = realiza Multiplicacion
 D = realiza Division
*/

if opc=="S"{
    res1=val3+val4
}else if (opc=="R"){
    res1=val3-val4
}else if (opc=="M"){
    res1=val3*val4
}else if (opc=="D"){
    if (val4==0){
        res1 = -1
    }
    res1=val3/val4
}

//if (res1 == -1) ==positivos valores

print("resultado es: \(res1)")
