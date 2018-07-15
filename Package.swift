// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SwiftChatServer",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0-rc.2"),
	
        // 💬 Core for SwiftChat
        .package(url: "https://github.com/cardoso/SwiftChatCore", from: "1.0.3")
    ],
    targets: [
        .target(name: "App", dependencies: ["SwiftChatCore", "FluentSQLite", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

