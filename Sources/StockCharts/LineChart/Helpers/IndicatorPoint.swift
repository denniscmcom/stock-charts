//
//  IndicatorPoint.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

public struct IndicatorPoint: View {
    public var body: some View {
        #if os(iOS)
        Circle()
            .frame(width: 20, height: 20)
            .foregroundColor(Color(.systemBlue))
        
        #elseif os(watchOS)
        Circle()
            .frame(width: 20, height: 20)
            .foregroundColor(Color(.blue))
        #endif
            
    }
}
