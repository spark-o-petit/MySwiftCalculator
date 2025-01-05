//
//  ContentView.swift
//  MySwiftCalculator
//
//  Created by alex on 12/30/24.
//

import SwiftUI

enum ButtonType: String {
  case first, second, third, fourth, fifth, sixth, seventh, eighth, ninth, zero
  case dot, equal, plus, minus, multiply, divide
  case percent, opposite, clear
  
  var buttonDisplayName: String {
    switch self {
    case .first: return "1"
    case .second: return "2"
    case .third: return "3"
    case .fourth: return "4"
    case .fifth: return "5"
    case .sixth: return "6"
    case .seventh: return "7"
    case .eighth: return "8"
    case .ninth: return "9"
    case .zero: return "0"
    case .clear: return "C"
    case .dot: return "."
    case .equal: return "="
    case .plus: return "+"
    case .minus: return "-"
    case .multiply: return "*"
    case .divide: return "/"
    case .percent: return "%"
    case .opposite: return "+/-"
      
    }
  }
  var backgroundColor: Color {
    switch self {
    case .first, .second, .third, .fourth, .fifth, .sixth, .seventh, .eighth, .ninth, .zero, .dot : return Color("NumberButton")
    case .equal, .plus, .minus, .multiply, .divide : return Color.orange
    case .percent, .opposite, .clear: return Color.gray
    }
  }
  var foregroundColor: Color {
    switch self {
    case .percent, .opposite, .clear: return Color.black
    default : return Color.white
    }
  }
}

struct ContentView: View {
  
  @State private var totalNumber: String = "0"
  @State var tempNumber: Int = 0
  @State var operatorType: ButtonType = .clear
  
  private let buttonData: [[ButtonType]] = [
    [.clear, .opposite, .percent, .divide],
    [.seventh, .eighth, .ninth, .multiply],
    [.fourth, .fifth, .sixth, .minus],
    [.first, .second, .third, .plus],
    [.zero, .dot, .equal]
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
                if button == .clear {
                        totalNumber = "0"
                } else if button == .plus {
                  tempNumber = Int(totalNumber) ?? 0
                  operatorType = .plus
                  totalNumber = "0"
                }
                else if button == .equal {
                  totalNumber = String((Int(totalNumber) ?? 0) + tempNumber )
                } else {
                        if totalNumber == "0" {
                            totalNumber = button.buttonDisplayName
                        } else {
                            totalNumber += button.buttonDisplayName
                        }
                    }
              } label: {
                Text(button.buttonDisplayName)
                  .frame(width: button == .zero ? 170 : 80, height: 80)
                  .background(button.backgroundColor)
                  .cornerRadius(40)
                  .foregroundColor(button.foregroundColor)
                  .font(Font.system(size: 40))
              }
            }
          }
        }
      }
    }
  }
}

#Preview {
    ContentView()
}
