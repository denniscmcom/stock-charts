//
//  ContentView.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChartViewPreview(data: generateSampleData(350))
                .tabItem {
                    Label("ChartView", systemImage: "house")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
