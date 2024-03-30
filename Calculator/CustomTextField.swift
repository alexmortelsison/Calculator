//
//  CustomTextField.swift
//  Calculator
//
//  Created by Alex Sison on 3/30/24.
//

import SwiftUI

struct CustomTextField: View {
    var title: String
    @Binding var text: String
    var body: some View {
        TextField(title, text: $text)
            .keyboardType(.decimalPad)
            .padding()
            .background(Color(red: 0.9, green: 0.9, blue: 0.9))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
