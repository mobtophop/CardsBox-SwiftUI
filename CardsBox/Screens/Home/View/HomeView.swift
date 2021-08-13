//
//  HomeView.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 01.06.2021.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @ObservedObject private var viewModel = HomeViewModel()
    
    var body: some View {
        List(0...10, id: \.self) { _ in
            CardView(cardType: "VISA", cardNumber: "4149 6293 9504 0884", cardHolderName: "Alexander Malygin", expDate: "21/10")
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle(Strings.mainTitle)
        .navigationBarItems(trailing: NavigationLink(destination: CardDetailView()) {
            Image(systemName: "plus")
                .font(.system(size: 24.0, weight: .medium))
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
