//
//  ContentView.swift
//  Calculator
//
//  Created by Alex Sison on 3/30/24.
//

import SwiftUI

struct ContentView: View {
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var result: String = ""
    @State var operation: String = ""

    let calculator = Calculator()

    var body: some View {
        VStack(spacing: 20) {
            CustomTextField(title: "First Number", text: $firstNumber)

            Picker("Picker", selection: $operation) {
                Text("+").tag("+")
                Text("-").tag("-")
                Text("*").tag("*")
                Text("/").tag("/")
            }
            .pickerStyle(.segmented)

            CustomTextField(title: "Second Number", text: $secondNumber)

            Text(result)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .foregroundStyle(Color.mint)

            Button {
                result = calculator.calculate(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
            } label: {
                Text("Calculate")
            }
            .padding()
            .foregroundStyle(Color.white)
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

class Calculator {
    func calculate(firstNumber: String, secondNumber: String, operation: String) -> String {
        let num1 = Int(firstNumber) ?? 0
        let num2 = Int(secondNumber) ?? 0

        switch operation {
        case "+":
            return String(num1 + num2)
        case "-":
            return String(num1 - num2)
        case "*":
            return String(num1 * num2)
        case "/":
            return String(num1 / num2)
        default:
            return "Error"
        }
    }
}

#Preview {
    ContentView()
}
