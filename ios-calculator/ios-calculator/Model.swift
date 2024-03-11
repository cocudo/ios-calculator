//
//  Model.swift
//  ios-calculator
//
//  Created by Iván Pardal Coca on 9/3/24.
//

import Foundation
import SwiftUI

struct KeyboardButton: Hashable {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWidth: Bool
    let type: ButtonType
    
    init(title: String, textColor: Color, backgroundColor: Color, isDoubleWidth: Bool, type: ButtonType) {
        self.title = title
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.isDoubleWidth = isDoubleWidth
        self.type = type
    }
    
    init(title: String, type: ButtonType) {
        self.init(title: title, textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: type)
    }
}

enum Numbers: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eigth = "8"
    case nime = "9"
    case zero = "0"
}

enum Simbols: String {
    case sum = "+"
    case subsctract = "-"
    case multiplication = "X"
    case split = "/"
    case percentage = "%"
    case reset = "AC"
    case comma = ","
    case result = "="
    case delete = "<-"
}

enum ButtonType: Hashable {
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType: Hashable {
    case sum
    case substract
    case multiplication
    case division
}
