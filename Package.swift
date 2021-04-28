// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/*
 https://swift.org/package-manager/
 */

let package = Package(
    name: "SwiftUI-InteractiveCharts",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "SwiftUIInteractiveCharts",
            targets: ["SwiftUI-InteractiveCharts"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "SwiftUI-InteractiveCharts",
            dependencies: []),
        .testTarget(
            name: "SwiftUI-InteractiveChartsTests",
            dependencies: ["SwiftUI-InteractiveCharts"]),
    ]
)
