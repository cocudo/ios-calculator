//
//  Matrix.swift
//  ios-calculator
//
//  Created by Iván Pardal Coca on 10/3/24.
//

import Foundation
import UIKit
import SwiftUI

struct Matrix {
    static let firstSectionData: [KeyboardButton] = [
        .init(title: "AC", textColor: .black, backgroundColor: customLigthGray, isDoubleWidth: false, type: .reset),
        .init(title: "+/-", textColor: .black, backgroundColor: customLigthGray, isDoubleWidth: false, type: .reset),
        .init(title: "%", textColor: .black, backgroundColor: customLigthGray, isDoubleWidth: false, type: .reset),
        .init(title: "/", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.division)),
        .init(title: "7", type: .number(7)),
        .init(title: "8", type: .number(8)),
        .init(title: "9", type: .number(9)),
        .init(title: "X", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.multiplication)),
        .init(title: "4", type: .number(4)),
        .init(title: "5", type: .number(5)),
        .init(title: "6", type: .number(6)),
        .init(title: "-", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.substract)),
        .init(title: "1", type: .number(1)),
        .init(title: "2", type: .number(2)),
        .init(title: "3", type: .number(3)),
        .init(title: "+", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.sum)),
    ]
    
    static let secondSectionData: [KeyboardButton] = [
        .init(title: "0", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: true, type: .number(0)),
        .init(title: ",", type: .reset),
        .init(title: "=", textColor: .white, backgroundColor: customLigthGray, isDoubleWidth: false, type: .result),
    ]
    
    static let firstSectionGrid: (CGFloat) -> [GridItem] = { width in
        return Array(repeating: GridItem(.flexible(minimum: width), spacing: 0), count: 4)
    }
    
    static let secondSectionGrid: (CGFloat) -> [GridItem] = { width in
        return [
            GridItem(.flexible(minimum: width * 2), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
        ]
    }
}
