//
//  ContentView.swift
//  MySwiftCalculator
//
//  Created by alex on 12/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        VStack {
          Spacer()
          HStack {
            Spacer()
            Text("331,460")
              .padding()
              .font(Font.system(size: 73))
              .foregroundColor(Color.white)
          }
          HStack {
            Text("C")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("/")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("%")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
            Text("%")
              .frame(width: 80, height: 80)
              .background(Color.orange)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
          }
          HStack {
            Text("7")
              .frame(width: 80, height: 80)
              .background(Color.gray)
              .cornerRadius(40)
              .foregroundColor(Color.white)
              .font(Font.system(size: 40))
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
