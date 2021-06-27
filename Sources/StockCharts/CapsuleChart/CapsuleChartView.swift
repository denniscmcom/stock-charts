//
//  CapsuleChartView.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 5/6/21.
//

import SwiftUI

public struct CapsuleChartView: View {
    public var percentageOfWidth: CGFloat
    
    public init(percentageOfWidth: CGFloat) {
        self.percentageOfWidth = percentageOfWidth
    }
    public var body: some View {
        ZStack {
            GeometryReader { proxy in
                Group {
                    #if os(iOS)
                    Capsule()
                        .foregroundColor(Color(.systemGray))
                        .opacity(0.2)
                    
                    Capsule()
                        .foregroundColor(Color(.systemBlue))
                        .frame(width: proxy.size.width * percentageOfWidth)
                    #elseif os(watchOS)
                    Capsule()
                        .foregroundColor(Color(.gray))
                        .opacity(0.2)
                    
                    Capsule()
                        .foregroundColor(Color(.blue))
                        .frame(width: proxy.size.width * percentageOfWidth)
                    #endif
                    
                }
                .frame(height: 10)
            }
        }
    }
}
