//
//  CardDetailView.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 15.06.2021.
//

import SwiftUI
import Combine

struct CardDetailView: View {
    
    @State var userName: String = ""
    
    var body: some View {
        VStack {
            TextFieldView("Enter name", text: $userName)

            Button {
                debugPrint("name", userName)
            } label: {
                Text("State")
                    .foregroundColor(.white)
            }
            .frame(width: 130, height: 45)
            .cornerRadius(7)
            .background(Color.red)

        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
    }
}
