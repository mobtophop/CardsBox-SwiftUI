//
//  HomeViewModel.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 14.06.2021.
//

import Foundation
import Combine
import CoreData

protocol HomeViewModelProtocol {
    func getCardList()
}

final class HomeViewModel: ObservableObject, HomeViewModelProtocol {
    // MARK: - Properties
    private var subscriptions = Set<AnyCancellable>()
    @Published private(set) var cardList: [Card] = []
    
    // MARK: - Init
    init() {
        getCardList()
    }
    
    // MARK: - Get card list
    func getCardList() {
        let request: NSFetchRequest<Card> = Card.fetchRequest()
        ObservableCoreData(request: request,
                           context: PersistenceController.shared.context)
            .map {$0}
            .removeDuplicates()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {completion in
                if case let .failure(error) = completion {
                    debugPrint("Error get cards", error)
                }
            }, receiveValue: { [weak self] cards in
                debugPrint("Cards", cards)
                self?.cardList = cards
            })
            .store(in: &self.subscriptions)
    }
}
