//
//  ViewModel.swift
//  ios-calculator
//
//  Created by Iván Pardal Coca on 11/3/24.
//

import Foundation

final class ViewModel: ObservableObject {
    @Published var textFieldValue: String = "0"
    
    var textFieldSavedValue: String = "0"
    var currentOperation: OperationType?
    var shouldRunOperation: Bool = false
    
    func logic(key: KeyboardButton) {
        switch key.type {
        case .number(let value):
            if shouldRunOperation {
                textFieldValue = "0"
            }
            textFieldValue = textFieldValue == "0" ? "\(value)" : textFieldValue + "\(value)"
        case .reset:
            textFieldValue = "0"
            textFieldSavedValue = "0"
            currentOperation = nil
            shouldRunOperation = false
        case .result:
            guard let operation = currentOperation else {
                return
            }
            switch operation {
            case .multiplication:
                textFieldValue = "\(Int(textFieldValue)! * Int(textFieldSavedValue)!)"
            case .sum:
                textFieldValue = "\(Int(textFieldValue)! + Int(textFieldSavedValue)!)"
            case .substract:
                textFieldValue = "\(Int(textFieldSavedValue)! - Int(textFieldValue)!)"
            case .division:
                textFieldValue = "\(Int(textFieldSavedValue)! / Int(textFieldValue)!)"
            }
        case .operation(let type):
            textFieldSavedValue = textFieldValue
            currentOperation = type
            shouldRunOperation = true
        }
    }
}
