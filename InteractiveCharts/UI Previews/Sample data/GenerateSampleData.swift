//
//  GenerateSampleData.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI

/*
 Generate sample data
 */
func generateSampleData(_ n: Int) -> [Double] {
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
