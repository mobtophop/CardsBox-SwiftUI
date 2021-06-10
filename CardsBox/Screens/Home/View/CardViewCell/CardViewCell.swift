//
//  CardViewCell.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 10.06.2021.
//

import SwiftUI

struct CardViewCell: View {
    private(set) var name: String
    private(set) var lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "creditcard.fill")
                .resizable()
                .frame(width: 50, height: 40, alignment: .leading)
            VStack(alignment: .leading) {
                Text(name)
                Text(lastName)
            }
            Spacer()
        }.padding(3)
    }
}

struct CardViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CardViewCell(name: "Ivan", lastName: "Ivanov")
            .previewLayout(.sizeThatFits)
    }
}
