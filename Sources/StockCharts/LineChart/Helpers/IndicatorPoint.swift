//
//  IndicatorPoint.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

public struct IndicatorPoint: View {
    public var style: LineChartStyle
    
    public var body: some View {
        Circle()
            .frame(width: 20, height: 20)
            .foregroundColor(style.indicatorPointColor)
    }
}
