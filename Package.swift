// swift-tools-version: 5.9

import CompilerPluginSupport
import PackageDescription

let tag = "601.0.1" // swift-syntax version
let modules: [(name: String, checksum: String, depends: [String])] = [
    ("SwiftSyntax601", "43382597977f4647267f4966c827bed7b7174864867219013334a5d0b5213529", ["SwiftSyntax601"]),
    ("SwiftSyntax600", "2c2489d649e2b6808eaef6384890a4eb3a294317151fb6ba24220df786e62873", ["SwiftSyntax600"]),
    ("SwiftSyntax", "854df69dd2c78661b469aeacfbab9ba201627d959a352d240733d2d84409642b", ["SwiftSyntax"]),
    ("SwiftDiagnostics", "44b3460a0c53b9c2906bbac84350d2ad5d33a18004f65806230044ba164de5ad", ["SwiftDiagnostics"]),
    ("SwiftBasicFormat", "76bd3c7c2c67b0c02ed250894ad0c9c125985d8bb10d380713f9cd279e817f93", ["SwiftBasicFormat"]),
]

let package = Package(
  name: "swift-syntax",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  
  products: modules.map {
      .library(name: $0.name, targets: [$0.name] + $0.depends
    ) },

  targets: modules.map {
      .binaryTarget(
          name: $0.name,
          path: tag + "/" + "\($0.name).xcframework.zip"
      )
  }
)
