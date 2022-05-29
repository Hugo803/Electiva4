//
//  Customer.swift
//  BookStore
//
//
//

import UIKit

class Customer: NSObject {
    
    // propiedades de la clase.
    var firstName = ""
    var lastName = ""
    var addressline1 = ""
    var addressline2 = ""
    var city = ""
    var state = ""
    var zip = ""
    var phoneNumber = ""
    var mailAddress = ""
    var favoriteGenre = ""
    
    // funcion.
    func listPurchaseHistory() -> [String]
    {
        return ["Purchase1","Purchase2"]
    }
    
}



// Agregando clases para otros materiales


// Creamos una clase libro

class Book: PrintedMeterial {
    var Author:String=""
    var Genre:String=""
    var Edition:String=""
    
}



class Magazine: PrintedMeterial {
    var Issue:String=""
    var Genre:String=""
}

class Newspaper: PrintedMeterial{
    var date:String=""
}

var Periodico1 = Newspaper()
var perfil1 = Author()

//Completando el capitulo 5. Se ha creado la clase author y tambien se agrego la clase PrintedMaterial, ademas se agregaron otras clases basicas como la que es Book, magazine, newspaper,etc...

