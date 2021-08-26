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
            ZStack(alignment: .leading) {
                Text("1234 5678 9876 5432")
                    .foregroundColor(.black)
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .padding([.top, .bottom])
                    .frame(height: 50)
                    .opacity(cardNumber.isEmpty ? 0.2 : 0)
                Text(cardNumber.separate(every: 4, with: " "))
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .padding([.top, .bottom])
                    .frame(height: 50)
                    .opacity(cardNumber.isEmpty ? 0 : 1)
            }
            HStack {
                CardBottomInfo(title: "Card Holder Name",
                               detail: cardHolderName,
                               placeholder: "Ivanon Ivan")
                Spacer()
                CardBottomInfo(title: "Exp Date",
                               detail: expDate,
                               placeholder: "22/02")
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
                 cardNumber: "",
                 cardHolderName: "",
                 expDate: "",
                 backgroundCard: defaultCardBackground)
            .previewLayout(.fixed(width: 390, height: 190))
    }
}

struct CardBottomInfo: View {
    var title: String
    var detail: String
    var placeholder: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.system(size: 10))
                .fontWeight(.regular)
                .foregroundColor(.white)
            ZStack(alignment: .leading) {
                Text(placeholder)
                    .font(.system(size: 15))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .opacity(detail.isEmpty ? 0.2 : 0)
                Text(detail)
                    .font(.system(size: 15))
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .opacity(detail.isEmpty ? 0 : 1)
            }
        }
    }
}
