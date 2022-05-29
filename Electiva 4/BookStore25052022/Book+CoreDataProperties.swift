//
//  Book+CoreDataProperties.swift
//  BookStore25052022
//
//  Created by alexis on 25/5/22.
//  Copyright © 2022 alexis. All rights reserved.
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var title: String?
    @NSManaged public var yearPublished: Int32
    @NSManaged public var author: Author?

}
