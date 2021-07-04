//
//  CapsuleChartView.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 5/6/21.
//

import SwiftUI

public struct CapsuleChartView: View {
    public var percentageOfWidth: CGFloat
    public var style: CapsuleChartStyle
    
    public init(percentageOfWidth: CGFloat, style: CapsuleChartStyle) {
        self.percentageOfWidth = percentageOfWidth
        self.style = style
    }
    
    public var body: some View {
        ZStack {
            GeometryReader { proxy in
                Group {
                    Capsule()
                        .foregroundColor(Color.gray)
                        .opacity(0.2)
                    
                    Capsule()
                        .foregroundColor(style.capsuleColor)
                        .frame(width: proxy.size.width * percentageOfWidth)
                }
                .frame(height: 10)
            }
        }
    }
}
