![Build Status](https://github.com/denniscm190/StockCharts/actions/workflows/swift.yml/badge.svg)

# SwiftUI Stock Charts 
Swift package for displaying interactive stock charts easily 🎉

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
ChartView(data: [Double], dates: [String]?, hours: [String]?)
```

#### Arguments
```swift
data: [120.3, 121.0, 132.4, ...]
dates: ["yyyy-MM-dd", "2021-01-01", "2021-01-02", ...]
hours: ["10:20", "10:21", "10:22", ...]  // It could be any format
```
<img width="374" alt="LineChartVideo" src="https://user-images.githubusercontent.com/66180929/116899136-7c171b80-ac37-11eb-9447-fb5e6c5d43a2.gif">
