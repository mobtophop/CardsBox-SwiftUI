//
//  CardDetailView.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 15.06.2021.
//

import SwiftUI
import Combine

enum CardDetailMode {
    case create, edit
}

struct CardDetailView: View {
    @State var userName: String = ""
    @State var cardNumber: String = ""
    var viewMode: CardDetailMode = .create
    
    var body: some View {
        VStack(alignment: .trailing) {
            HeaderCardDetailView(title: viewMode == .create ? "Create" : "Edit")
            ScrollView {
                VStack(spacing: 25) {
                    Spacer()
                    CardView(cardType: "VISA",
                             cardNumber: cardNumber,
                             cardHolderName: userName,
                             expDate: "21/10",
                             backgroundCard: defaultCardBackground)
                    Spacer()
                    
                    VStack(spacing: 15) {
                        TextFieldView("Card Number", text: $cardNumber)
                            .keyboardType(.numberPad)
                        TextFieldView("Enter name", text: $userName)
                    }
                    Button(action: {},
                           label: {
                            Text("Add")
                                .frame(width: 250, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                           })
                    
                }
                .padding()
            }
            .onTapGesture {
                hideKeyboard()
            }
        }
        .background(grayBackgroundView)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
    }
}

struct HeaderCardDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String

    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 27.0, weight: .semibold))
            Spacer()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.system(size: 24.0, weight: .regular))
            })
        }
        .padding()
    }
}
