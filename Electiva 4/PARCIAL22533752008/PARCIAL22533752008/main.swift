//
//  main.swift
//  Created by Development on 3/15/21.
//  Copyright © 2021 Development. All rights reserved.
//
//2533752008
//Yensy Vanessa Aguilar Mejia
//
import Foundation

//print("Hola Mundo!")



var val:String = ""
var n:Int = 0


class Empleado {
    var comision:Float = 0.00
    var nombre:String = ""
    var bonificacion:Float = 0.00
    var unidadesVendida:Int = 0
    var salariobase:Float = 425.00
    var salarioNeto:Float = 0.00
    
}

var VendedorLis = [Empleado]()
print("Digite la cantidad de vendedores a calcular: ")
val = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
val = val.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
n = Int(val)!

for var i in 0..<n
{
    let regTrabajador = Empleado()
    i+=1
    
    print("Digite el nombre del trabajador #\(i)")
    regTrabajador.nombre = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    regTrabajador.nombre = regTrabajador.nombre.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    
    print("Digite la unidades vendidas")
    var uv = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    uv = uv.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    regTrabajador.unidadesVendida = Int(uv)!
    
    
    if(regTrabajador.unidadesVendida >= 0 && regTrabajador.unidadesVendida <= 200){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 0.75
    }
        
    else if(regTrabajador.unidadesVendida >= 201 && regTrabajador.unidadesVendida <= 750){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 1.25
        
        
        if(regTrabajador.unidadesVendida >= 500 && regTrabajador.unidadesVendida <= 750){
            regTrabajador.bonificacion = 100.00
        }
    }
        
    else if(regTrabajador.unidadesVendida >= 750 && regTrabajador.unidadesVendida <= 1025){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 1.45
        let cien50:Float = (Float(regTrabajador.unidadesVendida) - 750) / 100
        regTrabajador.bonificacion = Float(Int(cien50) * 50)
    }
        
    else if(regTrabajador.unidadesVendida >= 1026){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 1.65
        if(regTrabajador.unidadesVendida > 2000){
            let cien75:Float = (Float(regTrabajador.unidadesVendida) - 2000) / 100
            regTrabajador.bonificacion = Float(Int(cien75) * 75)
        }
    }
    
    
    regTrabajador.salarioNeto = regTrabajador.salariobase + regTrabajador.comision +  regTrabajador.bonificacion
    VendedorLis.append(regTrabajador)
}

for item in VendedorLis {
    print("")
    print("=============================================")
    
    print("Nombre del trabajador: \(item.nombre) \nUnidades vendidas:\(item.unidadesVendida) \nComision: \(item.comision) \nBonificacion: \(item.bonificacion) \nSalario neto: \(item.salarioNeto)")
}
