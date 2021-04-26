//
//  ChartLabel.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 26/4/21.
//

import SwiftUI

struct ChartLabel: View {
    var data: [Double]
    var dates: [String]?
    var hours: [String]?
    
    @Binding var indexPosition: Int  // Data point position
    
    var body: some View {
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
//                    .foregroundColor(colour)
            }
            .font(.subheadline)
        }
    }
    
    /*
     Take string in format yy-MM-dd (2021-01-01) and transform it
     to long default string format
     */
    private func formatStringDate(_ stringDate: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yy-MM-dd"
        let date = dateFormatter.date(from: stringDate)
        
        // Format date to the final format
        dateFormatter.dateStyle = .long
        let finalDate = dateFormatter.string(from: date!)
        
        return finalDate
    }
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        ChartLabel(data: [10.0, 11.1, 10.5, 10.0, 11.9, 11.7, 10.4, 10.9], indexPosition: .constant(0))
    }
}
