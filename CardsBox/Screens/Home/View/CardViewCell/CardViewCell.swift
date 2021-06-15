//
//  CardViewCell.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 10.06.2021.
//

import SwiftUI

struct CardViewCell: View {
    private(set) var user: User
    
    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "creditcard.fill")
                .resizable()
                .frame(width: 50, height: 40, alignment: .leading)
            VStack(alignment: .leading) {
                Text(user.userName ?? "")
                Text(user.lastName ?? "")
            }
            Spacer()
        }.padding(3)
    }
}

struct CardViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CardViewCell(user: User())
            .previewLayout(.sizeThatFits)
    }
}
