import PackageDescription

let package = Package(
  name: "DirectoryListner",
  dependencies: [
    .Package(url: "../MtLruCache", majorVersion: 1)
  ]
)
