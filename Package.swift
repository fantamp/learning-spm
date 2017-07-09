import PackageDescription

let package = Package(
  name: "DirectoryListner",
  dependencies: [
    .Package(url: "https://github.com/fantamp/mt-lru-cache-swift.git", majorVersion: 1)
  ]
)
