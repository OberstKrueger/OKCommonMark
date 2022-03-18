// swift-tools-version:5.6

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
            exclude: [
                "COPYING",
                "README.md",
                "changelog.txt"
            ],
            publicHeadersPath: "./"
        ),
        .target(
            name: "SwiftyCommonMark",
            dependencies: ["cmark"]
        ),
        .testTarget(
            name: "SwiftyCommonMarkTests",
            dependencies: ["SwiftyCommonMark"],
            resources: [
                .process("SPEC.md")
            ]
        ),
    ]
)
