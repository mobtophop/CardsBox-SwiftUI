//
//  CardView.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 10.06.2021.
//

import SwiftUI

struct CardView: View {
    var cardType: String
    var cardNumber: String
    var cardHolderName: String
    var expDate: String
    
    init(cardType: String, cardNumber: String, cardHolderName: String, expDate: String) {
        self.cardType = cardType
        self.cardNumber = cardNumber
        self.cardHolderName = cardHolderName
        self.expDate = expDate
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Text(cardType)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                Spacer()
            }
            Spacer()
            Text(cardNumber)
                .foregroundColor(.white)
                .font(.system(size: 17))
                .fontWeight(.bold)
                .padding([.top, .bottom])
            HStack {
                CardButtonInfo(title: "Card Holder Name",
                               detail: cardHolderName)
                Spacer()
                CardButtonInfo(title: "Exp Date",
                               detail: expDate)
            }
            Spacer()
        }
        .padding([.top, .bottom], 5)
        .padding([.leading, .trailing], 25)
        .background(Color.black)
        .cornerRadius(20.0)
        .frame(height: 180)
    }
}

struct CardViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardType: "VISA", cardNumber: "4149 6293 9504 0884", cardHolderName: "Alexander Malygin", expDate: "21/10")
            .previewLayout(.fixed(width: 390, height: 215))
    }
}

struct CardButtonInfo: View {
    private var title: String
    private var detail: String
    
    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.system(size: 10))
                .fontWeight(.regular)
                .foregroundColor(.white)
            Text(detail)
                .font(.system(size: 15))
                .fontWeight(.medium)
                .foregroundColor(.white)
        }
    }
}
