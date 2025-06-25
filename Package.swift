// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "EntrustIdv",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "EntrustIdv",
            targets: [
                "EntrustIdv",
                "Core",
                "AnalyticsEvents",
                "CaptureCommon",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "FacePhoto",
            targets: [
                "FacePhoto",
                "EntrustIdv",
                "Core",
                "AnalyticsEvents",
                "CaptureCommon",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
                ]
        ),
        .library(
            name: "FaceMotion",
            targets: [
                "FaceMotion",
                "EntrustIdv",
                "Core",
                "AnalyticsEvents",
                "CaptureCommon",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
        .library(
            name: "Welcome",
            targets: [
                "Welcome",
                "EntrustIdv",
                "Core",
                "AnalyticsEvents",
                "CaptureCommon",
                "CaptureContract",
                "EntrustCaptureAPI",
                "TranslationKeys",
                "EntrustDependencies"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/hmlongco/Factory", exact: "2.5.3"),
        .package(url: "https://github.com/bckr/MRZParser", branch: "develop"),
    ],
    targets: [
        .binaryTarget(
            name: "AnalyticsEvents",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEvents-v50.0.0.xcframework.zip",
            checksum: "f52781dc9ee906f49c1f7ea3686add673bec6cf8488938dea14d53561ac69989"
        ),
        .binaryTarget(
            name: "CaptureCommon",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureCommon-v50.0.0.xcframework.zip",
            checksum: "f051212349e64a27b6076685ebc1d47408552dad5697522bfb64d9b83736d587"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-v50.0.0.xcframework.zip",
            checksum: "5a352de5ac36d569f420b0bf30d959eed86c46bb834a221caed91b175088dd41"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-v50.0.0.xcframework.zip",
            checksum: "d6a345b70ff5ad8172ec411864577e5b8d20321cf911d971803e20dc216485c3"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-v50.0.0.xcframework.zip",
            checksum: "f711f0988297f9b5ebe168b3f738b1ba3ada1a182a29517896ccb3e9297e2c91"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-v50.0.0.xcframework.zip",
            checksum: "ebb4570573d7829f5784a4ee3bee71b4b21e7003f35a66e8d05d2bdc788f96d6"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-v50.0.0.xcframework.zip",
            checksum: "db4d2371a878d66c23a5834add08938f82f17f6a52d09348ba5f41280e8ac23b"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-v50.0.0.xcframework.zip",
            checksum: "b0b5d77a77de77dd13386e165f41a39c37d26107fdec9d41863bb71e9d05f69c"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-v50.0.0.xcframework.zip",
            checksum: "7e4b93716285bca3e9b7be92fbe3cbf839bc70dc622da6e0ad66e173c78cb0b2"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-v50.0.0.xcframework.zip",
            checksum: "30723bd61576ea0ea197d0e9d73503dd1baddd72ab1bf8bbae81d1110049cf13"
        ),
        .target(
            name: "EntrustDependencies",
            dependencies: [
                .product(name: "FactoryKit", package: "Factory"),
                .product(name: "MRZParserKit", package: "MRZParser"),
            ]
        )
    ]
)
