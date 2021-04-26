//
//  LineView.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI

struct LineView: View {
    var data: [Double]
    
    var body: some View {
        GeometryReader { proxy in
            LinePath(data: data, width: proxy.size.width, height: proxy.size.height)
                .stroke(colorLine(), lineWidth: 2)
                .rotationEffect(.degrees(180), anchor: .center)
                .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
        }
    }
    
    /*
     Color path depending on data.
     */
    private func colorLine() -> Color {
        var color = Color(.systemGreen)
        
        if data.first! > data.last! {
            color = Color(.systemRed)
        } else if data.first! == data.last! {
            color = Color(.systemTeal)
        }
        
        return color
    }
}
