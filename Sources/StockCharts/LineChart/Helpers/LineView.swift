//
//  LineView.swift
//  StockCharts
//
//  Created by Dennis Concepción Martín on 30/4/21.
//

import SwiftUI

public struct LineView: View {
    var data: [Double]
    var dates: [String]?
    var hours: [String]?
    
    @Binding var showingIndicators: Bool
    @Binding var indexPosition: Int
    @State var IndicatorPointPosition: CGPoint = .zero
    @State var pathPoints = [CGPoint]()
    
    public var body: some View {
        ZStack {
            GeometryReader { proxy in
                LinePath(data: data, width: proxy.size.width, height: proxy.size.height, pathPoints: $pathPoints)
                    .stroke(colorLine(), lineWidth: 2)
            }
            
            if showingIndicators {
                IndicatorPoint()
                    .position(x: IndicatorPointPosition.x, y: IndicatorPointPosition.y)
            }
        }
        .rotationEffect(.degrees(180), anchor: .center)
        .rotation3DEffect(.degrees(180), axis: (x: 0.0, y: 1.0, z: 0.0))
        .contentShape(Rectangle())  // Control tappable area
        .gesture(
            LongPressGesture(minimumDuration: 0.2)
                .sequenced(before: DragGesture(minimumDistance: 0, coordinateSpace: .local))
                .onChanged({ value in  // Get value of the gesture
                    switch value {
                    case .second(true, let drag):
                        if let longPressLocation = drag?.location {
                            dragGesture(longPressLocation)
                        }
                    default:
                        break
                    }
                })
                // Hide indicator when finish
                .onEnded({ value in
                    self.showingIndicators = false
                })
        )
    }
    
    /*
     Color path depending on data.
     */
    public func colorLine() -> Color {
        var color = Color(.systemGreen)
        
        if data.first! > data.last! {
            color = Color(.systemRed)
        } else if data.first! == data.last! {
            color = Color(.systemTeal)
        }
        else if showingIndicators {
            color = Color(.systemBlue)
        }
        
        return color
    }
    
    /*
     When the user drag on Path -> Modifiy indicator point to move it on the path accordingly
     */
    public func dragGesture(_ longPressLocation: CGPoint) {
        let (closestXPoint, closestYPoint, yPointIndex) = getClosestValueFrom(longPressLocation, inData: pathPoints)
        self.IndicatorPointPosition.x = closestXPoint
        self.IndicatorPointPosition.y = closestYPoint
        self.showingIndicators = true
        self.indexPosition = yPointIndex
    }
    
    /*
     First, search the closest X point in Path from the tapped location.
     Then, find the correspondent Y point in Path.
     */
    public func getClosestValueFrom(_ value: CGPoint, inData: [CGPoint]) -> (CGFloat, CGFloat, Int) {
        let touchPoint: (CGFloat, CGFloat) = (value.x, value.y)
        let xPathPoints = inData.map { $0.x }
        let yPathPoints = inData.map { $0.y }
        
        // Closest X value
        let closestXPoint = xPathPoints.enumerated().min( by: { abs($0.1 - touchPoint.0) < abs($1.1 - touchPoint.0) } )!
        let closestYPointIndex = xPathPoints.firstIndex(of: closestXPoint.element)!
        let closestYPoint = yPathPoints[closestYPointIndex]
        
        // Index of the closest points in the array
        let yPointIndex = yPathPoints.firstIndex(of: closestYPoint)!

        return (closestXPoint.element, closestYPoint, yPointIndex)
    }
}
