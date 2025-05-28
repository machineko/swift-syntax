// swift-tools-version: 5.9

import CompilerPluginSupport
import PackageDescription

let tag = "601.0.1" // swift-syntax version
let modules: [(name: String, checksum: String, depends: [String])] = [
  ("SwiftBasicFormat", "76bd3c7c2c67b0c02ed250894ad0c9c125985d8bb10d380713f9cd279e817f93", ["SwiftSyntax509"]),
  ("SwiftCompilerPlugin", "de56bcb10b88db4422d276694bc8ad7e1b4052d31a449310e80c122196b63301", ["SwiftCompilerPluginMessageHandling", "SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509", "SwiftSyntax510", "SwiftSyntax600", "SwiftSyntax601", "_SwiftSyntaxCShims"]),
  ("SwiftCompilerPluginMessageHandling", "c4b76b4cc18916a36aafd4c1a832707b74a1d2e4fc723776f6a6a834f45ef32d", ["SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("_SwiftCompilerPluginMessageHandling", "9fbd68c2f2e6e4fe10ec45649540eeeb20cdcf3243b2afe05fb3348586423cbf", ["SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftDiagnostics", "44b3460a0c53b9c2906bbac84350d2ad5d33a18004f65806230044ba164de5ad", ["SwiftSyntax509"]),
  ("SwiftIDEUtils", "397e37d4b27aa95f8cfa52c4da9cf26e50d06cb1a19b5782c95ba4ecdebd3c68", ["SwiftSyntax509"]),
  ("SwiftIfConfig", "6278833b18f2e95a5ce4895ce8ecc37f1dd9e9297bdac17cdd0963c4e43ebf2b", ["SwiftSyntax509"]),
  ("SwiftLexicalLookup", "9d8f6276d4c179cd6c06bd9daca9ff1ea5ec3e7f799d8cc1cc515d25163cacba", ["SwiftSyntax509"]),
  ("SwiftOperators", "2eb809c63b277228e0ef1c436aca4e68c00b3cd1020cfd0a42c685fe06dccd7a", ["SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftParser", "7598209672d0f41ae87fe1e1fd35deb6d1fe7995a3d7d0e7e65e5daf5518c4ca", ["SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftParserDiagnostics", "3f85212ca2daa96b7c2e17aa38738f5115d908dc05f6f3e7e29bf0a08a14dd2f", ["SwiftParser", "SwiftDiagnostics", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftRefactor", "c2f5367103ddaea2119d501f72ba638ec4e887d767c0e267098564ea27f0184b", ["SwiftSyntax509"]),
  ("SwiftSyntax", "854df69dd2c78661b469aeacfbab9ba201627d959a352d240733d2d84409642b", ["SwiftSyntax509"]),
  ("SwiftSyntax509", "c065d5d40a10b4601af0b12ccaad98ac80cb5dc396ac440189997f0ddff634ee", []),
  ("SwiftSyntax510", "12a958bb8e41af27b63773ed4f825c4f35ebb84933761b91a7dbcacd5cfc92b8", []),
  ("SwiftSyntax600", "2c2489d649e2b6808eaef6384890a4eb3a294317151fb6ba24220df786e62873", []),
  ("SwiftSyntax601", "43382597977f4647267f4966c827bed7b7174864867219013334a5d0b5213529", []),
  ("SwiftSyntaxBuilder", "f49c8bed337724422e56d0672f3ec266a2a414fefdcac95c93ce5b624b1b7055", ["SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacroExpansion", "57aa121b2d18c5fb255b1e56fd74cd3d22b0dc1ac8485beecf64440cbd047c05", ["SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacros", "45043dd1974f4bdd651757959129308e0eef872cf6d5ad9443e80ea5467498b9", ["SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacrosTestSupport", "5706b6f5df271de0fe91c7c819376c839f24f10bc4c333830de4e3b0aed3bf72", ["_SwiftSyntaxTestSupport", "SwiftSyntaxMacroExpansion", "SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacrosGenericTestSupport", "7b8b3625d46a0f92580d6618dabe9308cbd0de5486c7cab5b514fe0076c479d8", ["SwiftDiagnostics", "SwiftIDEUtils", "SwiftParser", "SwiftSyntaxMacros", "SwiftSyntaxMacroExpansion"]),
  ("_SwiftSyntaxCShims", "5a33d1401b581e64667f33afc7754e695d1940509fa495511b6583ac9d89f3c9", []),
  ("_SwiftSyntaxTestSupport", "218f180aeac0e720902b91193b713f99ac8a6497fb7d527ae9a3b9ae4a948856", ["SwiftSyntaxMacroExpansion", "SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("_SwiftLibraryPluginProvider", "37ea1d52373ec2a1e22a0a604314516a4474b4109970aaba850c99a409498876", []),
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
