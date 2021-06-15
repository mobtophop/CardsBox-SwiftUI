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
        NavigationView{
            List(viewModel.userList, id: \.self) { user in
                CardViewCell(user: user)
            }
            .searchable(text: $searchText)
            .navigationBarTitle(Strings.mainTitle)
            .navigationBarItems(trailing: Button(Strings.mainAddNewButton) {
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
