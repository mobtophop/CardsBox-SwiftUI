//
//  View+Extension.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 8/13/21.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
