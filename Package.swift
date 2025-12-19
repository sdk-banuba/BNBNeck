// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.6-65-gbf994362d5"

let package = Package(
    name: "BNBNeck",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBNeck",
            targets: [
                "BNBNeck",
                "BNBNeck_BNBSdkCore",
                "BNBNeck_BNBEffectPlayer",
                "BNBNeck_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBNeck",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.6-65-gbf994362d5/BNBNeck.zip",
            checksum: "b53fa10b763d9f4cc2a2b7abc00895642b12328cec1eedfef17c973a1fc81d57"
        ),
        .target(
            name: "BNBNeck_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBNeck_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBNeck_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
