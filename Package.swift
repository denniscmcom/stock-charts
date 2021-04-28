//
//  Package.swift
//  InteractiveCharts
//
//  Created by Dennis Concepción Martín on 28/4/21.
//

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
