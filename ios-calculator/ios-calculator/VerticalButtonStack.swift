//
//  VerticalButtonStack.swift
//  ios-calculator
//
//  Created by Iván Pardal Coca on 10/3/24.
//

import SwiftUI

struct VerticalButtonStack: View {
    
    @ObservedObject var viewModel: ViewModel
    
    let data: [KeyboardButton] //El
    let columns: [GridItem]
    let width: CGFloat
    
    init(viewModel: ViewModel, data: [KeyboardButton], columns: [GridItem], width: CGFloat) {
        self.viewModel = viewModel
        self.data = data
        self.columns = columns
        self.width = width
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 12) {
            ForEach(data, id: \.self) { model in
                Button(action: {
                    viewModel.logic(key: model)
                }, label: {
                    if(model.isDoubleWidth) {
                        Rectangle()
                            .foregroundColor(model.backgroundColor)
                            .overlay(
                                Text(model.title)
                                    .font(.title)
                                    .offset(x: width * 0.22 * 0.5)
                            )
                            .frame(width: width * 2 * 0.235,
                                   height: width * 0.22)
                    } else {
                        Text(model.title)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .frame(width: width * 0.22,
                                   height: width * 0.22)
                    }
                    
                })
                .foregroundColor(model.textColor)
                .background(model.backgroundColor)
                .cornerRadius(width * 0.25)
            }
        }
        .frame(width: width)
    }
}

#Preview {
    VStack {
        VerticalButtonStack(viewModel: ViewModel(),data: Matrix.firstSectionData,
                            columns: Matrix.firstSectionGrid(390 * 0.25),
                            width: 390)
        VerticalButtonStack(viewModel: ViewModel(),data: Matrix.secondSectionData,
                            columns: Matrix.secondSectionGrid(390 * 0.25),
                            width: 390)
    }
}
