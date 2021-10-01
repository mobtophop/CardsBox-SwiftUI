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
    @Published private(set) var cardList: [CardModel] = []
    private let context = PersistenceController.shared.context
    
    // MARK: - Init
    init() {
        cardList = [
            CardModel(id: UUID(), userName: "Alex Malygin",  cardNumber: "1234122333365554"),
            CardModel(id: UUID(), userName: "Alex Malygin1", cardNumber: "1234122333365554"),
            CardModel(id: UUID(), userName: "Alex Malygin2", cardNumber: "1234122333365554"),
            CardModel(id: UUID(), userName: "Alex Malygin3", cardNumber: "1234122333365254"),
            CardModel(id: UUID(), userName: "Alex Malygin4", cardNumber: "1234122333365554"),
            CardModel(id: UUID(), userName: "Alex Malygin5", cardNumber: "1234122333365554"),
            CardModel(id: UUID(), userName: "Alex Malygin6", cardNumber: "1234122333365554"),
            CardModel(id: UUID(), userName: "Alex Malygin7", cardNumber: "1234122333361312"),
            CardModel(id: UUID(), userName: "Alex Malygin8", cardNumber: "1234122333365554"),
            CardModel(id: UUID(), userName: "Alex Malygin9", cardNumber: "1234122333365545"),
        ]
    }
}
