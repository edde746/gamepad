// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "universal_gamepad",
    platforms: [
        .iOS("14.0"),
        .tvOS("14.0")
    ],
    products: [
        .library(name: "universal-gamepad", targets: ["universal_gamepad"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "universal_gamepad",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
