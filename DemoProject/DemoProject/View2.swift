//
//  View2.swift
//  DemoProject
//
//  Created by Dennis Concepción Martín on 3/5/21.
//

import SwiftUI
import StockCharts

struct View2: View {
    var data: [Double]
    
    var body: some View {
        NavigationView {
            List {
                ForEach((1..<4)) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach((1..<10)) { _ in
                                ItemView2(data: data)
                            }
                        }
                        .padding()
                    }
                    .frame(height: 250)
                    .listRowInsets(EdgeInsets())
                }
            }
            .navigationTitle("View2")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ItemView2: View {
    var data: [Double]
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(Color(.secondarySystemBackground))
            .frame(width: 205, height: 230)
            .overlay(
                VStack(alignment: .leading) {
                    Group {
                        Text("AAPL")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.top)
                        
                        Text("Apple Inc")
                            .font(.headline)

                    }
                    .padding(.leading)
                    LineChartView(data: data, dates: nil, hours: nil, dragGesture: false)
                        .padding(.bottom)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            )
    }
}
