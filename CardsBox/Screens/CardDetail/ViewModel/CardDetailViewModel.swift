//
//  CardDetailViewModel.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 8/26/21.
//

import Foundation
import Combine
import CoreData

protocol CardDetailViewModelProtocol {
    func addNewCard(_ card: CardModel)
    func updateCard(_ card: CardModel)
}

final class CardDetailViewModel: ObservableObject, CardDetailViewModelProtocol {
    let context = PersistenceController.shared.context

    func addNewCard(_ card: CardModel) {                
        let newCard = Card(context: context)
        newCard.cardNumber = card.cardNumber
        newCard.userName = card.userName
        
        PersistenceController.shared.saveContext()
    }
    
    func updateCard(_ card: CardModel) {
        let request: NSFetchRequest<Card> = Card.fetchRequest()
        request.predicate = NSPredicate(format: "cardNumber = %@", card.cardNumber)
        
        do {
            let updateCard = try? context.fetch(request)
            updateCard?.first?.cardNumber = card.cardNumber
            updateCard?.first?.userName = card.userName

            PersistenceController.shared.saveContext()
        }
    }
}
