//
//  LineChartController.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 5/8/21.
//

import SwiftUI

public class LineChartController {
    
    // MARK: - Data
    public var prices: [Double]
    public var dates: [String]?
    public var hours: [String]?
    
    // MARK: - Style
    public var labelColor: Color
    public var indicatorPointColor: Color
    public var showingIndicatorLineColor: Color
    public var flatTrendLineColor: Color
    public var uptrendLineColor: Color
    public var downtrendLineColor: Color
    
    // MARK: - Interactions
    public var dragGesture: Bool = false
    
    public init(
        prices: [Double],
        dates: [String]? = nil,
        hours: [String]? = nil,
        
        labelColor: Color = .blue,
        indicatorPointColor: Color = .blue,
        showingIndicatorLineColor: Color = .blue,
        flatTrendLineColor: Color = .purple,
        uptrendLineColor: Color = .green,
        downtrendLineColor: Color = .red,
        
        dragGesture: Bool = false
    ) {
        self.prices = prices
        self.dates = dates
        self.hours = hours
        
        self.labelColor = labelColor
        self.indicatorPointColor = indicatorPointColor
        self.showingIndicatorLineColor = showingIndicatorLineColor
        self.flatTrendLineColor = flatTrendLineColor
        self.uptrendLineColor = uptrendLineColor
        self.downtrendLineColor = downtrendLineColor
        
        self.dragGesture = dragGesture
    }
}
