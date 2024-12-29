//
//  ContentView.swift
//  MySwiftCalculator
//
//  Created by alex on 12/30/24.
//

import SwiftUI

struct ContentView: View {
  
  @State private var totalNumber: String = "0"
  
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
          HStack {
            
            Button {
              totalNumber = "0"
            } label: {
              Text("C")
                .frame(width: 80, height: 80)
                .background(Color.gray)
                .cornerRadius(40)
                .foregroundColor(Color.black)
                .font(Font.system(size: 40))
            }

            Text("/")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.black)
              .font(Font.system(size: 40))
            Text("%")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.black)
              .font(Font.system(size: 40))
            Text("%")
              .frame(width: 80, height: 80)
              .background(Color.orange)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
          }
          HStack {
            
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

            Text("8")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("9")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("X")
              .frame(width: 80, height: 80)
              .background(Color.orange)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
          }
          HStack {
            Text("4")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("5")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("6")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("-")
              .frame(width: 80, height: 80)
              .background(Color.orange)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
          }
          HStack {
            Text("1")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("2")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("3")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("+")
              .frame(width: 80, height: 80)
              .background(Color.orange)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
          }
          HStack {
            Text("0")
              .frame(width: 170, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text(".")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("=")
              .frame(width: 80, height: 80)
              .background(Color.orange)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
          }

        }
        .padding()
      }
    }
}

#Preview {
    ContentView()
}
