//
//  HomeViewModel.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 14.06.2021.
//

import Foundation
import Combine
import CoreData

final class HomeViewModel: ObservableObject {
    // MARK: - Properties
    @Published private(set) var cardList: [Card] = []
    private let context = PersistenceController.shared.context
    
    // MARK: - Init
    init() {
        observeCardList()
    }
    
    // MARK: - Get card list and observe DB
    private func observeCardList() {
        let subscriber = Subscribers.Sink<[Card], Error>(
            receiveCompletion: { completion in
                if case let .failure(error) = completion {
                    debugPrint("Error get cards", error)
                }}) { [weak self] cards in
            self?.cardList = cards
        }
        
        let request: NSFetchRequest<Card> = Card.fetchRequest()
        ObservableCoreData(request: request,
                           context: PersistenceController.shared.context)
            .receive(subscriber: subscriber)
    }
    
    func delete(at offsets: IndexSet) {
       offsets.forEach { index in
            let cardNumber = cardList[index].cardNumber
            let request: NSFetchRequest<Card> = Card.fetchRequest()
            request.predicate = NSPredicate(format: "cardNumber = %@", cardNumber ?? "")
            let object = try? context.fetch(request)

            do {
                guard let card = object?.first else { return }
                context.delete(card)
                PersistenceController.shared.saveContext()
            }
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        cardList.move(fromOffsets: source, toOffset: destination)
    }
}
