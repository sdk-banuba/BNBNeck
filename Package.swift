// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.3-43-gc75a0b291"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.3-43-gc75a0b291/BNBNeck.zip",
            checksum: "39c9172d0b739be835f43408c8616d9efb05170314add01735c1b55debac319f"
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
