//
//  LineChartView.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

public struct LineChartView: View {
    public var data: [Double]
    public var dates: [String]?
    public var hours: [String]?
    public var dragGesture: Bool?
    public var style: LineChartStyle
    
    @State var showingIndicators = false
    @State var indexPosition = Int()
    
    public init(data: [Double], dates: [String]?, hours: [String]?, dragGesture: Bool?, style: LineChartStyle) {
        self.data = data
        self.dates = dates
        self.hours = hours
        self.dragGesture = dragGesture
        self.style = style
    }
    
    public var body: some View {
        if !data.isEmpty {
            VStack {
                if dragGesture ?? true {
                    ChartLabel(data: data, dates: dates, hours: hours, style: style, indexPosition: $indexPosition)
                        .opacity(showingIndicators ? 1: 0)
                }

                LineView(data: data, dates: dates, hours: hours, dragGesture: dragGesture, style: style, showingIndicators: $showingIndicators, indexPosition: $indexPosition)
            }
        }
    }
}
