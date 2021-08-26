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
    @State private var mode: CardDetailMode = .create
    @State private var selectedCardModel: String = ""
    @ObservedObject private var viewModel = HomeViewModel()
    
    var body: some View {
        List {
            ForEach(0...30, id: \.self) { idx in
                Button(action: {
                    mode = .edit
                    isShowingDetails = true
                    selectedCardModel = "1234"
                }) {
                    CardView(cardType: "VISA",
                             cardNumber: "4149629395040884",
                             cardHolderName: "Alexander Malygin",
                             expDate: "21/10",
                             backgroundCard: defaultCardBackground)
                        .listRowInsets(.init(top: 5, leading: 0, bottom: 5, trailing: 0))
                        .listRowBackground(grayBackgroundView)
                }
            }
            .onMove(perform: move)
        }
        .toolbar {
            EditButton()
        }
        .listStyle(PlainListStyle())
        .navigationBarTitle(Strings.mainTitle)
        .navigationBarItems(trailing: Button(action: {
            mode = .create
            isShowingDetails = true
        }, label: {
            Image(systemName: "plus")
                .font(.system(size: 24.0, weight: .medium))
        }))
        .sheet(isPresented: $isShowingDetails) {
            CardDetailView(viewMode: $mode, cardModel: $selectedCardModel)
        }
    }
    
    func delete(at offsets: IndexSet) {
        
    }
    func move(from source: IndexSet, to destination: Int) {
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
