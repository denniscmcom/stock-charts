
# Table of Contents

1.  [Installation](#orgd9f2fd7)
2.  [Demo app](#orgbd9420c)
3.  [Usage](#org57f1418)
    1.  [Line chart](#org19fa053)
    2.  [Capsule chart](#orgc225fff)
        1.  [Example](#org71304cd)


<a id="orgd9f2fd7"></a>

# Installation

-   In Xcode go to `File` -> `Swift packages` -> `Add package dependency`
-   Copy and paste `https://github.com/denniscmartin/stock-charts.git`


<a id="orgbd9420c"></a>

# Demo app

I've created an example app to show real use cases of this framework, check -> [Trades app](https://github.com/denniscmartin/trades-demo)


<a id="org57f1418"></a>

# Usage

    import StockCharts


<a id="org19fa053"></a>

## Line chart

    let lineChartController = LineChartController(prices: [Double])
    LineChartView(lineChartController: lineChartController)

You can customise the line chart with `LineChartController`

    LineChartController(
        prices: [Double],
        dates: [String]?, // format: yy-MM-dd
        hours: [String]?, // has to correspond to dates
        labelColor: Color,
        indicatorPointColor: Color,
        showingIndicatorLineColor: Color,
        flatTrendLineColor: Color,
        uptrendLineColor: Color,
        downtrendLineColor: Color,
        dragGesture: Bool
    )

To enable the drag gesture set `dragGesture` to `true` in the `LineChartController`

    LineChartView(
        lineChartController:
    	LineChartController(
    	    prices: [Double],
    	    dragGesture: true
    	)
    )


<a id="orgc225fff"></a>

## Capsule chart

    CapsuleChartView(percentageOfWidth: CGFloat)
    // percentageOfWidth: must be 0 <= x <= 1


<a id="org71304cd"></a>

### Example

    import SwiftUI
    import StockCharts
    
    struct ContentView: View {
        var body: some View {
    	RoundedRectangle(cornerRadius: 25)
    	    .frame(width: 400, height: 120)
    	    .foregroundColor(.white)
    	    .shadow(color: Color(.gray).opacity(0.15), radius: 10)
    	    .overlay(
    		VStack(alignment: .leading) {
    		    Text("Dennis Concepcion")
    			.font(.title3)
    			.fontWeight(.semibold)
    
    		    Text("Random guy")
    
    		    CapsuleChartView(percentageOfWidth: 0.6, style: CapsuleChartStyle(capsuleColor: Color.blue))
    			.padding(.top)
    		}
    		.padding()
    	    )
        }
    }

