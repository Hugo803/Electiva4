//
//  main.swift
//  Clase20220305b
//
//  Created by Development on 4/20/22.
//  Copyright © 2022 Development. All rights reserved.
//

import Foundation

print("Hello, World!")

func mensaje(msj:String) -> String{
return msj
}

var resul:String=""
resul=mensaje(msj: "Este es un mensaje")
print(resul)

/*
 Funcion de nombre operacionbasica, realizar las cuatro operaciones basicas.
 */

/*
opc
1=Sumar
2=Restar
3=Multiplicar
4=Dividir
*/
func operacionbasica(pval1:Double, pval2:Double, popc:Int) -> Double {
    var resul:Double=0.00
    if popc==1{
        resul=pval1+pval2
    }
    if popc==2{
        resul=pval1-pval2
    }
    if popc==3{
        resul=pval1*pval2
    }
    if popc==4{
        resul=pval1/pval2
    }
return resul
}

print(operacionbasica(pval1: 5.75, pval2: 5, popc: 4))
