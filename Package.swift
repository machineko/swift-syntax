// swift-tools-version: 5.9

import CompilerPluginSupport
import PackageDescription

let tag = "601.0.1" // swift-syntax version
let modules: [(name: String, checksum: String, depends: [String])] = [
  ("SwiftBasicFormat", "49d9e82725676e001dbb321c64330253a0d2025eadfb872d8328a402b359b8b4", ["SwiftSyntax509"]),
  ("SwiftCompilerPlugin", "de56bcb10b88db4422d276694bc8ad7e1b4052d31a449310e80c122196b63301", ["SwiftCompilerPluginMessageHandling", "SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509", "SwiftSyntax510", "SwiftSyntax600", "SwiftSyntax601", "_SwiftSyntaxCShims"]),
  ("SwiftCompilerPluginMessageHandling", "c4b76b4cc18916a36aafd4c1a832707b74a1d2e4fc723776f6a6a834f45ef32d", ["SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("_SwiftCompilerPluginMessageHandling", "9fbd68c2f2e6e4fe10ec45649540eeeb20cdcf3243b2afe05fb3348586423cbf", ["SwiftSyntaxMacroExpansion", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftBasicFormat", "SwiftOperators", "SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftDiagnostics", "50e11c3fc80159778fcdf03c1f1a959965936ff67a24c1710af01cb9d8c6ea07", ["SwiftSyntax509"]),
  ("SwiftIDEUtils", "397e37d4b27aa95f8cfa52c4da9cf26e50d06cb1a19b5782c95ba4ecdebd3c68", ["SwiftSyntax509"]),
  ("SwiftIfConfig", "6278833b18f2e95a5ce4895ce8ecc37f1dd9e9297bdac17cdd0963c4e43ebf2b", ["SwiftSyntax509"]),
  ("SwiftLexicalLookup", "9d8f6276d4c179cd6c06bd9daca9ff1ea5ec3e7f799d8cc1cc515d25163cacba", ["SwiftSyntax509"]),
  ("SwiftOperators", "2eb809c63b277228e0ef1c436aca4e68c00b3cd1020cfd0a42c685fe06dccd7a", ["SwiftParser", "SwiftDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftParser", "7598209672d0f41ae87fe1e1fd35deb6d1fe7995a3d7d0e7e65e5daf5518c4ca", ["SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftParserDiagnostics", "3f85212ca2daa96b7c2e17aa38738f5115d908dc05f6f3e7e29bf0a08a14dd2f", ["SwiftParser", "SwiftDiagnostics", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftRefactor", "c2f5367103ddaea2119d501f72ba638ec4e887d767c0e267098564ea27f0184b", ["SwiftSyntax509"]),
  ("SwiftSyntax", "430cddfbc96267956fef97ca76e8a6f7c04961818041c38ace70e1f03d381dd3", ["SwiftSyntax509"]),
  ("SwiftSyntax509", "c065d5d40a10b4601af0b12ccaad98ac80cb5dc396ac440189997f0ddff634ee", []),
  ("SwiftSyntax510", "12a958bb8e41af27b63773ed4f825c4f35ebb84933761b91a7dbcacd5cfc92b8", []),
  ("SwiftSyntax600", "314c87853f705c6ce9846b2b0f47c184dca64473e3f11af347fd4014db92e8cf", []),
  ("SwiftSyntax601", "9543e90d23ecef5513774e0fdcc942f928fa68b4c1d34c608e6595965e17b9ba", []),
  ("SwiftSyntaxBuilder", "f49c8bed337724422e56d0672f3ec266a2a414fefdcac95c93ce5b624b1b7055", ["SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacroExpansion", "57aa121b2d18c5fb255b1e56fd74cd3d22b0dc1ac8485beecf64440cbd047c05", ["SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacros", "45043dd1974f4bdd651757959129308e0eef872cf6d5ad9443e80ea5467498b9", ["SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacrosTestSupport", "5706b6f5df271de0fe91c7c819376c839f24f10bc4c333830de4e3b0aed3bf72", ["_SwiftSyntaxTestSupport", "SwiftSyntaxMacroExpansion", "SwiftOperators", "SwiftSyntaxMacros", "SwiftSyntaxBuilder", "SwiftParserDiagnostics", "SwiftDiagnostics", "SwiftParser", "SwiftBasicFormat", "SwiftSyntax", "SwiftSyntax509"]),
  ("SwiftSyntaxMacrosGenericTestSupport", "7b8b3625d46a0f92580d6618dabe9308cbd0de5486c7cab5b514fe0076c479d8", ["SwiftDiagnostics", "SwiftIDEUtils", "SwiftParser", "SwiftSyntaxMacros", "SwiftSyntaxMacroExpansion"]),
  ("_SwiftSyntaxCShims", "ac3baa4eaf049bb7ebbbc3d5cd25c18711031adefe3858f2a9c13136be807aa7", []),
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
