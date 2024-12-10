// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-204-g6de1b78ed5"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-204-g6de1b78ed5/BNBNeck.zip",
            checksum: "1759cddd22a8fd395bc6793881b2c2361bbe3ed31f5ad605c26ec89a7a3d3efa"
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
