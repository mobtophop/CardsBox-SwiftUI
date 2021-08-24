//
//  HomeView.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 01.06.2021.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var isShowingDetails = false
    @ObservedObject private var viewModel = HomeViewModel()
    
    var body: some View {
        List {
            ForEach(0...30, id: \.self) { _ in
                CardView(cardType: "VISA",
                         cardNumber: "4149 6293 9504 0884",
                         cardHolderName: "Alexander Malygin",
                         expDate: "21/10",
                         backgroundCard: defaultCardBackground)
                    .listRowInsets(.init(top: 5, leading: 0, bottom: 5, trailing: 0))
                    .listRowBackground(grayBackgroundView)
            }
        }
        .listStyle(DefaultListStyle())
        .navigationBarTitle(Strings.mainTitle)
        .navigationBarItems(trailing: Button(action: {
            isShowingDetails = true
        }, label: {
            Image(systemName: "plus")
                .font(.system(size: 24.0, weight: .medium))
        }))
        .sheet(isPresented: $isShowingDetails) {
            CardDetailView(viewMode: .create)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
