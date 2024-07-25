// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-61-gc1c7cef54"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-61-gc1c7cef54/BNBNeck.zip",
            checksum: "b9c15e912622d180ad632db9be66fd2e3211f9be37604b791c57fa4724d0c2b2"
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
