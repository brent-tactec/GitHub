//
//  ContentView.swift
//  bootcampapp
//
//  Created by Brent Reed on 2023-09-01.
//

import SwiftUI

struct ContentView: View {
  @State private var sliderValueRed: Double = 0.5
  @State private var sliderValueBlue: Double = 0.5
  @State private var sliderValueGreen: Double = 0.5
  
  @State private var rectangleColor: Color = Color(.sRGB, red: 0.5, green: 0.5, blue: 0.5, opacity: 1)
  
  var body: some View {
    ZStack {
      VStack {
        Rectangle()
          .fill(rectangleColor)
          .frame(width: 300, height: 300)
          .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
        // .padding()
        
        Text("Red")
        HStack {
          Slider(value: $sliderValueRed, in: 0...1)
            .accentColor(.red)
          Text("\(Int(sliderValueRed * 255))")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 20)
        
        Text("Green")
        
        HStack {
          Slider(value: $sliderValueGreen, in: 0...1)
            .accentColor(.green)
          Text("\(Int(sliderValueGreen * 255))")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 20)
        
        Text("Blue")
        
        HStack {
          
          Slider(value: $sliderValueBlue, in: 0...1)
            .accentColor(.blue)
          Text("\(Int(sliderValueBlue * 255))")
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.horizontal, 20)
        
        Button("Set Color") {
          rectangleColor = Color(.sRGB, red: sliderValueRed, green:sliderValueGreen, blue: sliderValueBlue, opacity: 1)
        }
        .padding()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

