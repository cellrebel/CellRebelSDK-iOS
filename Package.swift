// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "CellRebelSDK",
    products: [
        .library(
            name: "CellRebelSDK",
            targets: ["CellRebelSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "CellRebelSDK",
            path: "CellRebelSDK.xcframework")
    ]
)