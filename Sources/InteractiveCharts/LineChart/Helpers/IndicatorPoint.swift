//
//  IndicatorPoint.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI

struct IndicatorPoint: View {
    var body: some View {
        Circle()
            .frame(width: 20, height: 20)
            .foregroundColor(Color(.systemBlue))
            
    }
}

struct IndicatorPoint_Previews: PreviewProvider {
    static var previews: some View {
        IndicatorPoint()
    }
}
