// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "GraphQLKit",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "GraphQLKit",
            targets: ["GraphQLKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/GraphQLSwift/Graphiti.git", from: "0.20.1"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.27.1"),
    ],
    targets: [
        .target(name: "GraphQLKit", dependencies: ["Vapor", "Graphiti"]),
        .testTarget(name: "GraphQLKitTests",dependencies: ["GraphQLKit", "XCTVapor"]),
    ]
)
