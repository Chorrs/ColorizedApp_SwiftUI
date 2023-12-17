//
//  ContentView.swift
//  ColorizedApp_SwiftUI
//
//  Created by Chorrs on 17.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 0.0
    @State private var greenValue: Double = 0.0
    @State private var blueValue: Double = 0.0
    
    @State private var displayViewColor: Color = .brown
    
    var body: some View {
        VStack {
            ColorDisplayView(
                redColor: redValue / 255,
                greenColor: greenValue / 255,
                blueColor: blueValue / 255
            )
                .padding()
            
            SliderColorView(sliderValue: $redValue, sliderColor: .red)
                .accentColor(.red)
                .animation(.linear, value: 0.2)
            
            SliderColorView(sliderValue: $greenValue, sliderColor: .green)
                .accentColor(.green)
                .animation(.linear, value: 0.2)
            
            SliderColorView(sliderValue: $blueValue, sliderColor: .blue)
                .accentColor(.blue)
                .animation(.linear, value: 0.2)
            
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
