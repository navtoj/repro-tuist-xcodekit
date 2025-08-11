import ProjectDescription

let project = Project(
    name: "Tuist",
    targets: [
        .target(
            name: "Tuist",
            destinations: .macOS,
            product: .app,
            bundleId: "dev.tuist.Tuist",
            infoPlist: .default,
            sources: ["Tuist/Sources/**"],
            resources: ["Tuist/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TuistTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "dev.tuist.TuistTests",
            infoPlist: .default,
            sources: ["Tuist/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Tuist")]
        ),
    ]
)
