//
//  Informacion+CoreDataProperties.swift
//  Parcial42505392015
//
//  Created by Development on 5/21/22.
//  Copyright © 2022 Development. All rights reserved.
//

import Foundation
import CoreData


extension Informacion {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Informacion> {
        return NSFetchRequest<Informacion>(entityName: "Informacion")
    }
    
    @NSManaged public var frases: String?
    
}
