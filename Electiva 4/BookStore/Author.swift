//
//  Author.swift
//  BookStore
//
// 
//

import UIKit

class Author: NSObject {
    var fullName = ""
    var shortName = ""
    var place_of_birth=""
    var year_old=""
    var address = ""
    var city = ""
    var history=""
    
    
    func Perfil() -> String{
        
        fullName = "Hugo Ernesto Jovel Martinez"
        shortName="El guapo"
        place_of_birth="San Salvador"
        year_old = "25 años"
        address=" San Salvador, casa #17 "
        city=" Apopa City "
        history = "25 años redactando"
        
        return "Nombre del Autor: \(self.fullName), de edad  \(self.year_old)"
    }
    
}
