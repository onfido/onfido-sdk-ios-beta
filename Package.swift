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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEvents-v0.0.2.xcframework.zip",
            checksum: "9b34937f1ac6ff674117669eeed95bca218039c36ba9c476a20d05feba0724c7"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-v0.0.2.xcframework.zip",
            checksum: "35d4aa32f98960da63ee9ed2dabdcb94f956272c7a1c7ad690b58756ffc2df65"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-v0.0.2.xcframework.zip",
            checksum: "79bf5a37a77e9c927a8f94177f26e69a4c26e3acbb3e7db0dc6338728d7f94e4"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-v0.0.2.xcframework.zip",
            checksum: "1bea89baa2d938f88f47d30ae8e68a53a17ce88d6cb4ea606d5dd9a38c2b3fd6"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-v0.0.2.xcframework.zip",
            checksum: "b5e61b92d403582322a0f3f125f4c590d706df3b5a8333cd7a394c23d5b1d9ab"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-v0.0.2.xcframework.zip",
            checksum: "79c415cb6e31be207337566b4f45597e618a77232f89526116c012de3b1c857d"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-v0.0.2.xcframework.zip",
            checksum: "097515d3f57d1154dbc7c714d7975218da9112cf9e31bd136237cf157b43cb6e"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-v0.0.2.xcframework.zip",
            checksum: "d22ab0db085402be65412149559c3d960a1b67f2f60c4de2708652dbad1dc3aa"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-v0.0.2.xcframework.zip",
            checksum: "9326537aa787bb3eedc24af469d56552edf59c25339e3431ce3b4eb245ac762b"
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
