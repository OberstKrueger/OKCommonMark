// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "OKCommonMark",
    products: [
        .library(
            name: "OKCommonMark",
            targets: ["OKCommonMark"]
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
            name: "OKCommonMark",
            dependencies: ["cmark"]
        ),
        .testTarget(
            name: "OKCommonMarkTests",
            dependencies: ["OKCommonMark"],
            resources: [
                .process("spec.md"),
                .process("specHardBreaks.html"),
                .process("specNoBreaks.html"),
                .process("specSafe.html"),
                .process("specSmart.html"),
                .process("specSourcePos.html"),
                .process("specUnsafe.html")
            ]
        ),
    ]
)
