//
//  ColorDisplayView.swift
//  ColorizedApp_SwiftUI
//
//  Created by Chorrs on 17.12.23.
//

import SwiftUI

struct ColorDisplayView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Rectangle()
            .foregroundColor(Color(red: redColor, green: greenColor, blue: blueColor))
            .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

//#Preview {
//    ColorDisplayView()
//}
