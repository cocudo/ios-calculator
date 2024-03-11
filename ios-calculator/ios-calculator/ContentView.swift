//
//  ContentView.swift
//  ios-calculator
//
//  Created by Iván Pardal Coca on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewmodel = ViewModel()
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            GeometryReader { proxy in
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Text(viewmodel.textFieldValue)
                            .foregroundColor(.white)
                            .font(.system(size: 100, weight: .regular))
                            .frame(height: 100)
                            .padding(.trailing, 20)
                    }
                    VerticalButtonStack(
                        viewModel: viewmodel,
                        data: Matrix.firstSectionData, 
                        columns: Matrix.firstSectionGrid(proxy.size.width * 0.25),
                        width: proxy.size.width)
                    VerticalButtonStack(
                        viewModel: viewmodel,
                        data: Matrix.secondSectionData,
                        columns: Matrix.secondSectionGrid(proxy.size.width * 0.25),
                        width: proxy.size.width)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
