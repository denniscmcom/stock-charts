# SwiftUI Interactive Charts 
Swift package for displaying interactive stock charts easily 🎉

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
`import StockCharts`

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
