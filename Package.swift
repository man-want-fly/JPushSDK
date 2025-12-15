// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "JPushSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "JPushSDK",
            targets: ["JPushSDK"]
        ),
    ],
    targets: [
        // Wrapper target（Swift 代码，可为空）
        .target(
            name: "JPushSDK",
            dependencies: ["JPushBinary", "JCoreBinary"],
            path: "Sources/JPushSDK"
        ),
        // JPush binary
        .binaryTarget(
            name: "JPushBinary",
            path: "Sources/JPushSDK/JPush.xcframework"
        ),
        // JCore binary
        .binaryTarget(
            name: "JCoreBinary",
            path: "Sources/JPushSDK/JCore.xcframework"
        ),
    ]
)