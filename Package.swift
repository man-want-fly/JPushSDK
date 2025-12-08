// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JPushSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "JPushSDK",
            targets: ["JPushSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "jcore-ios-5.2.2",
            url: "https://github.com/man-want-fly/JPushSDK/releases/download/1.0.0/jcore-ios-5.2.2.xcframework.zip",
            checksum: "e0aaff4800418d60c5b77dfaf3b871089908bb84cc82e5fc80f40702cf295587"
        )
        .binaryTarget(
            name: "jpush-ios-5.9.0",
            url: "https://github.com/man-want-fly/JPushSDK/releases/download/1.0.0/jpush-ios-5.9.0.xcframework.zip",
            checksum: "beddbab28822329e0afe7e0a3548d04e0f03d2442690eac5b4675249bf7ee824"
        )
    ]
)
