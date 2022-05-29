//
//  main.swift
//  yearBisiestosCap9
//
//
//

import Foundation


// los años bisiestos son divisibles entre 4 
// no son divisibles entre 100 excepto que sean divisibles entre 100 y tambien entre 400
var n:Int=0
var anio:Int=0
func getInputText() -> String {
    var input = ""
    input=NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    input = input.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    return input
}

print("Ingrese cantidad de años que desee evaluar ")
n = Int(getInputText())!

for var i in 0..<n
{
    i+=1
print("")
print("Ingrese #\(i) año a verificar ")
anio = Int(getInputText())!

if (anio % 4 == 0) && (anio % 100 != 0) || (anio % 400 == 0){
    print(" #\(i) el Año \(anio) es Bisiesto")
} else {
    print(" #\(i) el Año \(anio) no es Bisiesto")
}

}
print("")
