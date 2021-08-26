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
    @State private var userName: String = ""
    @State private var cardNumber: String = ""
    @Binding var viewMode: CardDetailMode
    @Binding var cardModel: String
    
    var body: some View {
        VStack(alignment: .trailing) {
            HeaderCardDetailView(title: viewMode == .create ? "Create" : "Edit")
            ScrollView {
                VStack(spacing: 25) {
                    Spacer()
                    CardView(cardType: "VISA",
                             cardNumber: viewMode == .create ? cardNumber : cardModel,
                             cardHolderName: userName,
                             expDate: "21/10",
                             backgroundCard: defaultCardBackground)
                    Spacer()
                    
                    VStack(spacing: 15) {
                        TextFieldView("Card Number", text: $cardNumber, maxLenth: 16)
                            .keyboardType(.numberPad)
                        TextFieldView("Enter name", text: $userName, maxLenth: 25)
                    }
                    Button(action: {
                        debugPrint("card info", cardNumber, userName)
                    },
                    label: {
                        Text("Add")
                            .frame(width: 250, height: 50)
                            .background(gradient1)
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
        CardDetailView(viewMode: .constant(.create), cardModel: .constant(""))
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
