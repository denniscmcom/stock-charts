![Build Status](https://github.com/denniscm190/StockCharts/actions/workflows/swift.yml/badge.svg)
![Platform](https://img.shields.io/cocoapods/p/AFNNetworking)
![Contributors](https://img.shields.io/github/contributors/denniscm190/StockCharts)
![Repo size](https://img.shields.io/github/repo-size/denniscm190/StockCharts)
![License](https://img.shields.io/github/license/denniscm190/StockCharts)

# SwiftUI Stock Charts 
Swift package for displaying interactive stock charts easily 🎉

<img src="https://user-images.githubusercontent.com/66180929/116726198-40841380-a9e3-11eb-8e41-ec20027f3076.gif" height="450"/> <img src="https://user-images.githubusercontent.com/66180929/116725323-12ea9a80-a9e2-11eb-8463-21da10aed2ce.png" height="450"/> <img src="https://user-images.githubusercontent.com/66180929/116725319-11b96d80-a9e2-11eb-95f2-63c46c4841f6.png" height="450"/>

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
