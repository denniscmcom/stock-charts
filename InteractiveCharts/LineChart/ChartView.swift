//
//  ChartView.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI
import GameplayKit

struct ChartView: View {
    var data: [Double]
    var dates: [String]?
    var hours: [String]?
    
    @State private var showingLabel = false
    @State private var IndicatorPointPosition: CGPoint = .zero
    @State private var indexPosition = Int()
    
    var body: some View {
        ZStack {
            if showingLabel {
                ChartLabel(data: data, dates: dates, hours: hours, indexPosition: $indexPosition)
            }
            
            LineView(data: data)
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(data: [10.0, 11.1, 10.5, 11.0, 11.9, 11.7, 10.4, 10.9])
    }
    
    /*
     Generate sample data
     */
    static func generateSampleData(_ n: Int) -> [Double] {
        return (0..<n).map { _ in .random(in: 1...20) }
    }
}
