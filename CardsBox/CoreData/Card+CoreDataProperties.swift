//
//  Card+CoreDataProperties.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 14.06.2021.
//
//

import Foundation
import CoreData


extension Card {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Card> {
        return NSFetchRequest<Card>(entityName: "Card")
    }

    @NSManaged public var bankName: String?
    @NSManaged public var cardNumber: Int32
    @NSManaged public var origin: User?

}
