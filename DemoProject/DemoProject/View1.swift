//
//  View1.swift
//  DemoProject
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI
import StockCharts

struct View1: View {
    var data: [Double]
    var dates: [String]?
    var hours: [String]?
    var dragGesture: Bool?
    
    var range = ["5D", "1M", "3M", "1Y", "5Y"]
    @State private var selectedRange = "3M"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Apple Inc")
                    .font(.title3)
                    .padding([.horizontal, .bottom])
                
                Picker("Select a range", selection: $selectedRange) {
                    ForEach(range, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                LineChartView(data: data, dates: dates, hours: hours, dragGesture: dragGesture)
                    .padding(.vertical)
                
                List(1..<7) { i in
                    Text("Item \(i)")
                }
            }
            .navigationTitle("AAPL")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "star")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "plus.circle")
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
