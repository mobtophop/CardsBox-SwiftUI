//
//  User+CoreDataProperties.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 14.06.2021.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var lastName: String?
    @NSManaged public var userName: String?
    @NSManaged public var card: NSSet?

}

// MARK: Generated accessors for card
extension User {

    @objc(addCardObject:)
    @NSManaged public func addToCard(_ value: Card)

    @objc(removeCardObject:)
    @NSManaged public func removeFromCard(_ value: Card)

    @objc(addCard:)
    @NSManaged public func addToCard(_ values: NSSet)

    @objc(removeCard:)
    @NSManaged public func removeFromCard(_ values: NSSet)

}

extension User : Identifiable {

}
