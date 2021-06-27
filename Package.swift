// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

/*
 https://swift.org/package-manager/
 */

let package = Package(
    name: "StockCharts",
    platforms: [
        .iOS(.v14), .watchOS(.v7)
    ],
    products: [
        .library(
            name: "StockCharts",
            targets: ["StockCharts"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "StockCharts",
            dependencies: []),
        .testTarget(
            name: "StockChartsTests",
            dependencies: ["StockCharts"]),
    ]
)
