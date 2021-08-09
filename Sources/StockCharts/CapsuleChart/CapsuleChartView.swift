//
//  CapsuleChartView.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 5/6/21.
//

import SwiftUI

public struct CapsuleChartView: View {
    public var percentageOfWidth: CGFloat
    public var capsuleChartStyle: CapsuleChartStyle
    
    public init(percentageOfWidth: CGFloat, style: CapsuleChartStyle) {
        self.percentageOfWidth = percentageOfWidth
        self.capsuleChartStyle = style
    }
    
    public var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .leading) {
                Group {
                    Capsule()
                        .foregroundColor(Color.gray)
                        .opacity(0.2)
                    
                    Capsule()
                        .foregroundColor(capsuleChartStyle.capsuleColor)
                        .frame(width: proxy.size.width * percentageOfWidth)
                }
                .frame(height: 10)
            }
        }
    }
}
