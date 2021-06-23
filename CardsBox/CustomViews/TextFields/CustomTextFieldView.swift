//
//  TextFieldView.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 15.06.2021.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    private var placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    var body: some View {
        TextField(placeholder, text: $text)
            .frame(height: 45)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 6)
            .cornerRadius(16)
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray))
            .padding([.horizontal], 24)
    }
}
