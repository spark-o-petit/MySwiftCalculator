//
//  ContentView.swift
//  MySwiftCalculator
//
//  Created by alex on 12/30/24.
//

import SwiftUI

struct ContentView: View {
  
  @State private var totalNumber: String = "0"
  
  private let buttonData: [[String]] = [
    ["C", "/", "%", "$"],
    ["7", "8", "9", "X"],
    ["4", "5", "6", "-"],
    ["1", "2", "3", "+"],
    ["0", "0", ".", "="]
  ]
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      VStack {
        Spacer()
        HStack {
          Spacer()
          Text(totalNumber)
            .padding()
            .font(Font.system(size: 73))
            .foregroundColor(Color.white)
        }
        
        ForEach(buttonData, id: \.self) {row in
          HStack {
            
            ForEach(row, id: \.self) {button in
              Button {
                if totalNumber == "0" {
                  totalNumber = "7"
                } else {
                  totalNumber += "7"
                }
              } label: {
                Text("7")
                  .frame(width: 80, height: 80)
                  .background(Color.numberButton)
                  .cornerRadius(40)
                  .foregroundColor(Color.white)
                  .font(Font.system(size: 40))
              }
            }
            
          }
          
          
          
        }
        .padding()
      }
    }
  }
}

#Preview {
    ContentView()
}
