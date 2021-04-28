//
//  ChartView.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI

public struct ChartView: View {
    var data: [Double]
    var dates: [String]?
    var hours: [String]?
    
    @State var showingIndicators = false
    @State var indexPosition = Int()
    
    public var body: some View {
        VStack {
            ChartLabel(data: data, dates: dates, hours: hours, indexPosition: $indexPosition)
                .opacity(showingIndicators ? 1: 0)
                .padding(.vertical)

            LineView(data: data, showingIndicators: $showingIndicators, indexPosition: $indexPosition)
        }
    }
}
