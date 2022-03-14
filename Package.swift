// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftyCommonmark",
    products: [
        .library(
            name: "SwiftyCommonmark",
            targets: ["SwiftyCommonmark"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftyCommonmark",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftyCommonmarkTests",
            dependencies: ["SwiftyCommonmark"]
        ),
    ]
)
