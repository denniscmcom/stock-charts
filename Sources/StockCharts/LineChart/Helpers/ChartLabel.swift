//
//  ChartLabel.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

public struct ChartLabel: View {
    public var data: [Double]
    public var dates: [String]?
    public var hours: [String]?
    
    @Binding var indexPosition: Int  // Data point position
    
    public var body: some View {
        HStack {
            Group {
                if let dates = self.dates {
                    let date = formatStringDate(dates[indexPosition])
                    Text(date)
                }
                if let hours = self.hours {
                    let hour = hours[indexPosition]
                    Text(hour)
                }
                Text("\(data[indexPosition], specifier: "%.2f")")
                    .foregroundColor(Color(.systemBlue))
            }
            .font(.callout)
        }
    }
    
    /*
     Take string in format yy-MM-dd (2021-01-01) and transform it
     to long default string format
     */
    public func formatStringDate(_ stringDate: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yy-MM-dd"
        let date = dateFormatter.date(from: stringDate)
        
        // Format date to the final format
        dateFormatter.dateStyle = .long
        let finalDate = dateFormatter.string(from: date!)
        
        return finalDate
    }
}
