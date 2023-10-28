// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "UUIDPro",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "UUIDPro",
            targets: ["UUIDPro"]),
    ],
    targets: [
        .target(
            name: "UUIDPro",
            dependencies: [
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "UUIDProTests",
            dependencies: ["UUIDPro"]
         ),
    ],
    swiftLanguageVersions: [ .version("5.9") ]
)
