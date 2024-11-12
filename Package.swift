// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterSway",
    products: [
        .library(name: "TreeSitterSway", targets: ["TreeSitterSway"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterSway",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterSwayTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterSway",
            ],
            path: "bindings/swift/TreeSitterSwayTests"
        )
    ],
    cLanguageStandard: .c11
)
