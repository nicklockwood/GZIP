// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GZIP",
    products: [
        .library(
            name: "GZIP",
            targets: ["GZIP"]),
    ],
    targets: [
        .target(
            name: "GZIP",
            path: "GZIP",
            sources: ["Sources"],
            publicHeadersPath: "Sources")
    ]
)
