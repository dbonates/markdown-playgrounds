// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarkdownPlayground",
    platforms: [
        .macOS(.v10_14)
    ],
    products: [
        .executable(name: "MarkdownPlayground", targets: ["MarkdownPlayground"]),
    ],
    dependencies: [
        .package(url: "https://github.com/objcio/commonmark-swift", .branch("swift-5")),
        .package(url: "https://github.com/apple/swift-syntax.git", .exact("0.40200.0")),
    ],
    targets: [
        .target(
            name: "MarkdownPlayground",
            dependencies: ["CommonMark", "Ccmark", "SwiftSyntax"]
        ),
        .testTarget(
            name: "MarkdownPlaygroundTests",
            dependencies: ["MarkdownPlayground"]
        ),
    ]
)
