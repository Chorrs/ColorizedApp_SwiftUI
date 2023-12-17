//
//  SliderColorView.swift
//  ColorizedApp_SwiftUI
//
//  Created by Chorrs on 17.12.23.
//

import SwiftUI

struct SliderColorView: View {
    @Binding var sliderValue: Double
    @State var sliderColor: Color
    
    var body: some View {
        Slider(value: $sliderValue, in: 0...255, step: 1) {
            Text("Value")
        } minimumValueLabel: {
            Text("0").foregroundStyle(sliderColor)
        } maximumValueLabel: {
            Text(sliderValue.formatted()).foregroundStyle(sliderColor)
        }
    }
}

//#Preview {
//    SliderColorView()
//}
