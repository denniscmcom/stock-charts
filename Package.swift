// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/*
 https://swift.org/package-manager/
 */

let package = Package(
    name: "SwiftUICharts",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "InteractiveCharts",
            targets: ["InteractiveCharts"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "InteractiveCharts",
            dependencies: []),
        .testTarget(
            name: "InteractiveChartsTests",
            dependencies: ["InteractiveCharts"]),
    ]
)
