// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CarrisMetropolitana",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "CarrisMetropolitana",
            targets: ["CarrisMetropolitana"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CarrisMetropolitana",
            dependencies: [],
            exclude: [
                "Sources/CarrisMetropolitana/UnsupportedFiles.swift", // Exclude unsupported files for non-iOS platforms
            ]),
        .testTarget(
            name: "CarrisMetropolitanaTests",
            dependencies: ["CarrisMetropolitana"]),
    ]
)
