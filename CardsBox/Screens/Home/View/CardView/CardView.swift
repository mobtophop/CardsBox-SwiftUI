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
    var backgroundCard: [Color]

    init(cardType: String, cardNumber: String, cardHolderName: String,
         expDate: String, backgroundCard: [Color]) {
        self.cardType = cardType
        self.cardNumber = cardNumber
        self.cardHolderName = cardHolderName
        self.expDate = expDate
        self.backgroundCard = backgroundCard
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
                CardBottomInfo(title: "Card Holder Name",
                               detail: cardHolderName)
                Spacer()
                CardBottomInfo(title: "Exp Date",
                               detail: expDate)
            }
            Spacer()
        }
        .padding([.top, .bottom], 5)
        .padding([.leading, .trailing], 25)
        .background(LinearGradient(gradient: Gradient(colors: backgroundCard),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing))
        .cornerRadius(20.0)
        .frame(height: 190)
    }
}

struct CardViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardType: "VISA",
                 cardNumber: "4149 6293 9504 0884",
                 cardHolderName: "Alexander Malygin",
                 expDate: "21/10",
                 backgroundCard: defaultCardBackground)
            .previewLayout(.fixed(width: 390, height: 190))
    }
}

struct CardBottomInfo: View {
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
