//
//  HomeView.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 01.06.2021.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView{
            List(0...100, id: \.self) { item in
                CardViewCell(name: "\(item)", lastName: "\(item + 1)")
            }
            .searchable(text: $searchText)
            .navigationBarTitle("Cards Box")
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
