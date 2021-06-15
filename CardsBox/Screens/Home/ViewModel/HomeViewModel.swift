//
//  HomeViewModel.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 14.06.2021.
//

import Foundation
import Combine

protocol HomeViewModelProtocol {
    func addNewCard(_ card: Card)
    func createUser(_ user: User)
    func getCardList()
}

class HomeViewModel: ObservableObject, HomeViewModelProtocol {
    // MARK: - Properties
    @Published var cardList: [Card] = []
    @Published var userList: [User] = []
    
    // MARK: - Init
    init() {
        
    }
    
    // MARK: - Create new card for user
    func addNewCard(_ card: Card) {
        
    }
    // MARK: - Create new user
    func createUser(_ user: User) {
        
    }
    
    // MARK: - Get card list
    func getCardList() {
        
    }
}
