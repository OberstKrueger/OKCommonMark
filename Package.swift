// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftyCommonMark",
    products: [
        .library(
            name: "SwiftyCommonMark",
            targets: ["SwiftyCommonMark"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "cmark",
            dependencies: [],
            exclude: ["COPYING", "README.md", "changelog.txt"]
        ),
        .target(
            name: "SwiftyCommonMark",
            dependencies: ["cmark"]
        ),
        .testTarget(
            name: "SwiftyCommonMarkTests",
            dependencies: ["SwiftyCommonMark"]
        ),
    ]
)
