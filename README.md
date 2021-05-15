![Build Status](https://github.com/denniscm190/StockCharts/actions/workflows/swift.yml/badge.svg)

# SwiftUI Stock Charts 
Display interactive stock charts easily 🎉

<img width="374" alt="View1-Screenshot" src="https://user-images.githubusercontent.com/66180929/116898466-b207d000-ac36-11eb-8fb6-0a4f229307db.png">


## Features
- Interactive line chart
- Light weight
- Easy to use

## Requirements
- iOS 14+
- Swift 5+

## Instalation
- In Xcode go to `File` -> `Swift packages` -> `Add package dependency`
- Copy and paste `https://github.com/denniscm190/StockCharts.git`

## Usage
```swift
import StockCharts
```

### Line chart
```swift
LineChartView(data: [Double], dates: [String]?, hours: [String]?, dragGesture: Bool?)
```

#### Arguments
```swift
data: [120.3, 121.0, 132.4, ...]
dates: ["yyyy-MM-dd", "2021-01-01", "2021-01-02", ...]
hours: ["10:20", "10:21", "10:22", ...]  // It could be any format
dragGesture: false  // By default is true
```
<img width="374" alt="LineChartVideo" src="https://user-images.githubusercontent.com/66180929/116899623-137c6e80-ac38-11eb-8ec0-e678aea54062.gif">
