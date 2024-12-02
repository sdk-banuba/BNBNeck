// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-217-g36d3a95c51"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-217-g36d3a95c51/BNBNeck.zip",
            checksum: "f36b5f469c96b9fc42ec04b0934467519f2120473e057c57b381b04d13a4dfd3"
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
