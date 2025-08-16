import ProjectDescription

let project = Project(
    name: "Tuist",
    targets: [
        .target(
            name: "Tuist",
            destinations: .macOS,
            product: .app,
            bundleId: "dev.tuist.Tuist",
			deploymentTargets: .macOS("14.7.6"),
            infoPlist: .default,
            sources: ["Tuist/Sources/**"],
            resources: ["Tuist/Resources/**"],
            dependencies: [.sdk(name: "XcodeKit", type: .framework, status: .required)]
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
