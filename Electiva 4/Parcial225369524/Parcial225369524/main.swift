/*
 AUTHOR: JOSE LUIS FLORES VASQUEZ
 CARNET: 2533982015
 */

import Foundation

class person {
    var name: String
    var bonificacion: Double
    var comision: Double
    var neto: Double
}

func calComision(unidades: Integer) -> Double {
    if (unidades >= 0 && unidades <= 200) { return unidades * 0.75 }
    if (unidades >= 201 && unidades <= 750) { return unidades * 1.25 }
    if (unidades >= 751 && unidades <= 1025) { return unidades * 1.45 }
    return unidades * 1.55
}

func calBonificacion(unidades: Integer) -> Double {
    if (unidades >= 500 && unidades <= 750) { return 100 }
    if (unidades >= 751 && unidades <= 1025) { return 50 }
    if (unidades >= 2000) { return 755 }
    return 0
}

func leerteclado()-> String{
    var input = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    return input
}

var empleados = [Person]()
var active = true

while(active) {
    
    print("Digite el nombre de empleado")
    let nameLine = leerteclado()
    print("Digite unidades vendidas")
    let numLine = (leerteclado() as NSString).integerValue
    
    let unidades = Int(numLine)
    let boni:Double = calBonificacion(unidades:unidades)
    let comi:Double = calComision(unidades:unidades)
    let neto:Double = 425.0 + boni + comi
    
    var empleado: person = person
    empleado.name = nameLine
    empleado.bonificacion = boni
    empleado.comision = comi
    empleado.neto = neto
    empleados.append(empleado)
    
    print("Desea continur? si/no")
    let str = leerteclado()
    if (str == "si") {
        active = false
    }
}

for empleado in empleados {
    print("Nombre de empleado: \(empleado.name)")
    print("Bonificacion: \(empleado.bonificacion) " )
    print("Comision:  \(empleado.comision)")
    print("Neto: \(empleado.neto)")
    print("")
}
