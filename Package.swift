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
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/AnalyticsEvents-v0.1.3.xcframework.zip",
            checksum: "588e99762a7d54f6a800bc71d2830cf9d1170e0cca2524cc45a092b8c2fafd1a"
        ),
        .binaryTarget(
            name: "CaptureContract",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/CaptureContract-v0.1.3.xcframework.zip",
            checksum: "27c1d27eb574925473a2c63c4debfcf4201ebfbc16a6c349c8f4ea9c7eb835c6"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Core-v0.1.3.xcframework.zip",
            checksum: "2a596874b977441654a7cc89083eb48616b68bed64434392dab3e6d3703dc660"
        ),
        .binaryTarget(
            name: "EntrustCaptureAPI",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustCaptureAPI-v0.1.3.xcframework.zip",
            checksum: "1caad4232696dd545ec5f7bba28e76ebf00adc3aabe5465e5f281a45b0deb1f3"
        ),
        .binaryTarget(
            name: "EntrustIdv",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/EntrustIdv-v0.1.3.xcframework.zip",
            checksum: "153bc618fb4deb0587789c2e9eec422fc8ce4cd999f9c68894792bb834a9d093"
        ),
        .binaryTarget(
            name: "FaceMotion",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FaceMotion-v0.1.3.xcframework.zip",
            checksum: "1fea65afa53351f484369c42c9777420dd06fd80bffd0f29473f4e694c97d025"
        ),
        .binaryTarget(
            name: "FacePhoto",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/FacePhoto-v0.1.3.xcframework.zip",
            checksum: "3afed4717c17ee485201a0883d8811f41ea1ff31a1d7933f3e581170cbbc9a49"
        ),
        .binaryTarget(
            name: "TranslationKeys",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/TranslationKeys-v0.1.3.xcframework.zip",
            checksum: "c4abcfff5180238ef369d8040919350e0e506974db468cb4d64c0120d6819df2"
        ),
        .binaryTarget(
            name: "Welcome",
            url: "https://onfido-sdks.s3.eu-west-1.amazonaws.com/ios/flex/Welcome-v0.1.3.xcframework.zip",
            checksum: "06ee7033751357113ec1d381f33c9fc571eee5acb72b780f0ef7e4276fe10e47"
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
