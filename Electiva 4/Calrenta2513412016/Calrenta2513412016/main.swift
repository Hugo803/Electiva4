//
//  main.swift
//  Calrenta2513412016
//
//  Created by Development on 3/12/22.
//  Copyright © 2022 Development. All rights reserved.
//

import Foundation


var nombre : String = ""
var salario: Double=0
var Formapago: Int=0
var montorenta: Double = 0
var montosalarioliquido: Double = 0
var continueGuessing = true
var keepPlaying = true
var input = ""

while keepPlaying {
    func calcularenta(salario: Double, Formapago: Int)->Double
    {
        var renta: Double=0;
        
        if (Formapago == 1)
        {
            if (salario <= 118.00){renta = 0.00}
            if (salario >= 118.01 && salario <= 223.81){renta = (((salario - 118.00)*0.1)+4.42)}
            if (salario >= 223.82 && salario <= 509.52){renta = (((salario - 223.81)*0.20)+15.00)}
            if (salario >= 509.53){renta = (((salario - 509.52)*0.30)+72.14)}
        }
        if (Formapago == 2)
        {
            if (salario <= 236.00){renta = 0.00}
            if (salario >= 236.01 && salario <= 447.62){renta = (((salario - 236.00)*0.1)+8.83)}
            if (salario >= 447.63 && salario <= 1019.05){renta = (((salario - 447.62)*0.20)+30.00)}
            if (salario >= 1019.06){renta = (((salario - 1019.05)*0.30)+144.28)}
        }
        
        if (Formapago == 3)
        {
            if (salario <= 472.00){renta = 0.00}
            if (salario >= 472.01 && salario <= 895.24){renta = (((salario - 472.00)*0.1)+17.67)}
            if (salario >= 895.25 && salario <= 2038.10){renta = (((salario - 895.24)*0.20)+60.00)}
            if (salario >= 2038.11){renta = (((salario - 2038.10)*0.30)+288.57)}
        }
        
        return renta;
    }
    
    
    
    func leer()->String
    {
        var input = "";
        
        input = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String;
        input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil);
        return input;
    }
    
    
    print("INGRESE NOMBRE : ")
    nombre = String(leer())
    
    print("INGRESE SALARIO : ")
    salario = Double(leer())!
    
    print("FORMA DE PAGO")
    print("1. Semanal \n2. Quincenal \n3. Mensual")
    
    Formapago = Int(leer())!
    
    
    var calcula: Double=0
    
    calcula=calcularenta(salario: salario, Formapago: Formapago)
    
    montosalarioliquido = salario - calcula
    
    
    print("NOMBRE : ",nombre)
    print("SALARIO : ",montosalarioliquido)
    print("RENTA : ",calcula)
    if (Formapago == 1){print("PAGO: SEMANAL \n")}
    if (Formapago == 2){print("PAGO: QUINCENAL \n")}
    if (Formapago == 3){print("PAGO: MENSUAL \n")}
    
    
    print ("DESEA REALIZAR OTRO CALCULO? S o N")
    input = NSString(data: FileHandle.standardInput.availableData, encoding: String.Encoding.utf8.rawValue)! as String
    input = input.replacingOccurrences(of:"\n", with:"", options: NSString.CompareOptions.literal, range: nil)
    
    if input == "N" || input == "n" {
        keepPlaying = false
    }
    continueGuessing = true
}
