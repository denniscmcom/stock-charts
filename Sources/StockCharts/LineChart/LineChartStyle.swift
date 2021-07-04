//
//  LineChartStyle.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 04/07/2021.
//

import SwiftUI

public class LineChartStyle {
    public var labelColor: Color
    public var indicatorPointColor: Color
    public var showingIndicatorLineColor: Color
    public var flatTrendLineColor: Color
    public var uptrendLineColor: Color
    public var downtrendLineColor: Color
    
    public init(labelColor: Color, indicatorPointColor: Color, showingIndicatorLineColor: Color, flatTrendLineColor: Color, uptrendLineColor: Color, downtrendLineColor: Color) {
        self.labelColor = labelColor
        self.indicatorPointColor = indicatorPointColor
        self.showingIndicatorLineColor = showingIndicatorLineColor
        self.flatTrendLineColor = flatTrendLineColor
        self.uptrendLineColor = uptrendLineColor
        self.downtrendLineColor = downtrendLineColor
    }
}
