//
//  HomeViewModel.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 14.06.2021.
//

import Foundation
import Combine

protocol HomeViewModelProtocol {
    func addNewCard(_ card: String)
    func createUser(_ user: String)
    func getCardList()
}

class HomeViewModel: ObservableObject, HomeViewModelProtocol {
    // MARK: - Properties
    @Published var cardList: [String] = []
    @Published var userList: [String] = []
    
    // MARK: - Init
    init() {
        
    }
    
    // MARK: - Create new card for user
    func addNewCard(_ card: String) {
        
    }
    // MARK: - Create new user
    func createUser(_ user: String) {
        
    }
    
    // MARK: - Get card list
    func getCardList() {

    }
}
