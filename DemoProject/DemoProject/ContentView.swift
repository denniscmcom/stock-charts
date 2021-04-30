//
//  ContentView.swift
//  DemoProject
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
    
    private func generateSampleData(_ n: Int) -> [Double] {
        var prices = [Double]()

        for _ in (1..<n) {
            var lastPrice = prices.last ?? 50.0
            let randomNumber = Double.random(in: 0...0.02)
            
            if randomNumber < 0.013 {
                lastPrice = lastPrice * (1 - randomNumber)
            } else {
                lastPrice = lastPrice * (1 + randomNumber)
            }
            
            prices.append(lastPrice)
        }
        return prices
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
