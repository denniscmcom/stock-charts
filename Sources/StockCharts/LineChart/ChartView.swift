//
//  ChartView.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

public struct ChartView: View {
    public var data: [Double]
    public var dates: [String]?
    public var hours: [String]?
    
    @State var showingIndicators = false
    @State var indexPosition = Int()
    
    public init(data: [Double], dates: [String]?, hours: [String]?) {
        self.data = data
        self.dates = dates
        self.hours = hours
    }
    
    public var body: some View {
        VStack {
            Text("Hello")
//            ChartLabel(data: data, dates: dates, hours: hours, indexPosition: $indexPosition)
//                .opacity(showingIndicators ? 1: 0)
//                .padding(.vertical)

//            LineView(data: data, showingIndicators: $showingIndicators, indexPosition: $indexPosition)
        }
    }
}
