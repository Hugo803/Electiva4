//
//  main.swift
//  Created by Development on 3/15/21.
//  Copyright © 2021 Development. All rights reserved.
//
//Hugo Ernesto Jovel Martinez
//25-0539-2015
//
// Elabore un proyecto command line tools con el nombre Parcial2[carné], donde debe reemplazar [carné] por su numero de carné sin guiones o espacios solamente el numero, por ejemplo si el numero de carné fuera 25-0344-1992, el nombre del proyecto seria: Parcial22503441992, para dicho proyecto debe considerar lo siguiente:

//  Agregar dos lineas al inicio en comentario que detalle su nombre completo y numero de carné.
//    Detallar ordenadamente cada solución con el enunciado de la solicitud, de forma secuencial según solicitud.
//    Subir como respuesta a esta pregunta un archivo comprimido en formato .zip, del proyecto command line tools elaborado.

//Solicitudes a dar solución, con código Swift:

//    Elabore un programa que calcule el salario neto de cada vendedor a partir de las unidades vendidas, bonificación y salario base, para el calculo de la comisión así como la bonificación, deberá utilizar la siguiente tabla:
//        Rango de Unidades Valor por unidad Bonificación
//        0-200 $0.75 Ninguna
//        201-750 $1.25 Aplica bonificación de $100.00 si ha vendido mas de 500 hasta 750 unidades
//        751-1025 $1.45 Aplica bonificación de $50.00 por cada ciento de unidades vendidas comprendidas en el rango 751-1025
//        1026-a mas $1.65 Aplica bonificación de $75.00 por cada ciento de unidades vendidas arriba de 2000 unidades
//    El salario neto se calculara de la suma del salario base que es de $425.00 mas la comisión y la bonificación.
//    El programa debe solicitar los datos de N vendedores y almacenarlos, para después generar una lista o listado.
//    La lista de datos debe mostrar Nombre del vendedor, Unidades vendidas, comisión, bonificación y salario neto, esto se debe mostrar hasta el final, cuando el programa ha terminado de capturar los datos de los N vendedores.
//    Debe incorporar una función de nombre calComision que reciba de parámetro el numero de unidades y retorne el valor de comisión.



//NOTA:

//La comisión se calcula a partir de la tabla, por ejemplo si el vendedor vende 250 unidades, primero identificamos en que rango aplica para tal caso es 201-750, lo que significa que el valor por cada unidad vendida es $1.25, por ello la comisión seria $312.50
import Foundation

//print("Hello, World!")

//se debe Solicitar N Vendedores

var val:String = ""
var n:Int = 0

//Declaramos la variables a utilizar
class Empleado {
    var comision:Float = 0.00
    var nombre:String = ""
    var bonificacion:Float = 0.00
    var unidadesVendida:Int = 0
    var salariobase:Float = 425.00
    var salarioNeto:Float = 0.00
    
}
//Captura de informacion de vendedores a calcular salario
var VendedorLis = [Empleado]()
print("Digite la cantidad de vendedores a calcular: ")
val = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
val = val.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
n = Int(val)!

for var i in 0..<n
{
    let regTrabajador = Empleado()
    i+=1
    //Ingrese el nombre del trabajador
    print("Digite el nombre del trabajador #\(i)")
    regTrabajador.nombre = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    regTrabajador.nombre = regTrabajador.nombre.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    //Ingreso de las unidades vendidas
    print("Digite la unidades vendidas")
    var uv = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    uv = uv.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    regTrabajador.unidadesVendida = Int(uv)!
    
    //Rango de unidades de 0 a 200
    if(regTrabajador.unidadesVendida >= 0 && regTrabajador.unidadesVendida <= 200){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 0.75
    }
        //Se calcula el bono de los 100 que esta en el rango 201 a 750
    else if(regTrabajador.unidadesVendida >= 201 && regTrabajador.unidadesVendida <= 750){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 1.25
        
        //Bono de $100 si a vendido mas de 500 unidades hasta 750 unidades
        if(regTrabajador.unidadesVendida >= 500 && regTrabajador.unidadesVendida <= 750){
            regTrabajador.bonificacion = 100.00
        }
    }
        //Bono de $50 por cada ciento de unidades vendidas comprendidas entre 751 y 1025
    else if(regTrabajador.unidadesVendida >= 750 && regTrabajador.unidadesVendida <= 1025){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 1.45
        let cien50:Float = (Float(regTrabajador.unidadesVendida) - 750) / 100
        regTrabajador.bonificacion = Float(Int(cien50) * 50)
    }
        //Rango mayor  a 1026 unidades
    else if(regTrabajador.unidadesVendida >= 1026){
        regTrabajador.comision = Float(regTrabajador.unidadesVendida) * 1.65
        if(regTrabajador.unidadesVendida > 2000){
            let cien75:Float = (Float(regTrabajador.unidadesVendida) - 2000) / 100
            regTrabajador.bonificacion = Float(Int(cien75) * 75)
        }
    }
    
    //Sumar salario base $425 + comision + bonificacion
    regTrabajador.salarioNeto = regTrabajador.salariobase + regTrabajador.comision +  regTrabajador.bonificacion
    VendedorLis.append(regTrabajador)
}

for item in VendedorLis {
    print("")
    print("=============================================")
    //Mostrar la lista de trabajadores Nombre,Unidades vendidas, comision y salario neto
    //No menciona que se deba mostrar el salario base por lo que se omite, en todo caso solo se agrega al print ya que existe en la clase.
    print("Nombre del trabajador: \(item.nombre) \nUnidades vendidas:\(item.unidadesVendida) \nComision: \(item.comision) \nBonificacion: \(item.bonificacion) \nSalario neto: \(item.salarioNeto)")
}
