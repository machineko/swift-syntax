 # InstantSyntax

### 610.0.1 binary frameworks for https://github.com/swiftlang/swift-syntax

Status 5/5/25: Rebuilt taking the above tag of the swift-syntax repo using 
Xcode 15.4 and seems to be working quite well using all Xcodes 15-16.

© https://xkcd.com/303/ - I compile swift-syntax so you don't have to.

![Icon](https://imgs.xkcd.com/comics/compiling.png)

This is a Swift Package containing precompiled static libraries inside binary .xcframeworks of the main 
modules of the [swift-syntax](https://github.com/swiftlang/swift-syntax) project.
It is intended this can be packaged up and used in place of the swift-syntax
source repo by Swift Macro projects to avoid [this problem people have
 experienced](https://forums.swift.org/t/compilation-extremely-slow-since-macros-adoption/67921/65) 
It operates by overriding the swift-syntax source repo pulled in by your macros.

### TL;DR

You can use it one of two ways. You can add it as a top level dependency of your project in Xcode (referencing branch main rather than a tag) or,
you can clone the repo to your local drive and dragging it onto the top level of your project as you would to work on a Swift package as is
[documented here](https://developer.apple.com/documentation/xcode/editing-a-package-dependency-as-a-local-package) .

It works by replacing the dependency of your macros on the source repo of `swift-syntax` with this binary repo as they share the same "identity" (last path component of the URL or directory). This currently gives a warning during resolution which you can ignore.

If you still experience problems involving "duplicate copy commands being 
generated" when you try to build, try closing and reopening your project.

Use package_syntax.sh if you would like to rebuild from Apple's source.
A huge thanks to repo https://github.com/swift-precompiled/swift-syntax
which showed it was possible to package static libraries in .xcframeworks.
