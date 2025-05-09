// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "BlueKit",
  platforms: [
    .macOS(.v10_15)
  ],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "BlueKit",
      targets: ["BlueKit"])
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-log.git", from: "1.4.0")
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.

    .target(
      name: "BlueKit",
      dependencies: [
        .product(name: "Logging", package: "swift-log")
      ])

  ]
)
