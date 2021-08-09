<a href="https://www.producthunt.com/posts/stockcharts-for-swiftui?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-stockcharts-for-swiftui" target="_blank"><img src="https://api.producthunt.com/widgets/embed-image/v1/featured.svg?post_id=295975&theme=dark" alt="StockCharts for SwiftUI - Display interactive stock charts easily 🎉 | Product Hunt" style="width: 250px; height: 54px;" width="250" height="54" /></a>

# SwiftUI Stock Charts 
![Build Status](https://github.com/denniscm190/StockCharts/actions/workflows/swift.yml/badge.svg)   
Display interactive stock charts easily 🎉

## Instalation
- In Xcode go to `File` -> `Swift packages` -> `Add package dependency`
- Copy and paste `https://github.com/denniscm190/StockCharts.git`

## Demo app
[**Trades** is a SwiftUI app](https://github.com/denniscm190/trades-demo) with real use cases of the StockCharts `framework`.  

## Usage
```swift
import StockCharts
```

### Line chart
```swift
let lineChartController = LineChartController(prices: [Double])
LineChartView(lineChartController: lineChartController)
```

You can customise the line chart with `LineChartController`

```swift
LineChartController(
    prices: [Double],
    dates: [String],
    hours: [String],
    labelColor: Color,
    indicatorPointColor: Color,
    showingIndicatorLineColor: Color,
    flatTrendLineColor: Color,
    uptrendLineColor: Color,
    downtrendLineColor: Color,
    dragGesture: Bool
)
```

To enable the drag gesture set `dragGesture` to `true` in the `LineChartController `    

```swift
LineChartView(
    lineChartController:
        LineChartController(
            prices: [Double],
            dragGesture: true
        )
)
```
<img width="374" alt="LineChartVideo" src="https://user-images.githubusercontent.com/66180929/116899623-137c6e80-ac38-11eb-8ec0-e678aea54062.gif">

### Capsule chart
```swift
CapsuleChartView(percentageOfWidth: CGFloat)
// percentageOfWidth: must be 0 <= x <= 1
```

#### Example
```swift
import SwiftUI
import StockCharts

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 400, height: 120)
            .foregroundColor(.white)
            .shadow(color: Color(,.gray).opacity(0.15), radius: 10)
            .overlay(
                VStack(alignment: .leading) {
                    Text("Dennis Concepcion")
                        .font(.title3)
                        .fontWeight(.semibold)

                    Text("Random guy")
                    
                    CapsuleChartView(percentageOfWidth: 0.6)
                        .padding(.top)
                }
                .padding()
            )
    }
}
```

<img width="328" alt="CapsuleChart" src="https://user-images.githubusercontent.com/66180929/120899384-c2450d80-c62f-11eb-9a56-5a03e97441d2.png">

