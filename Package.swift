// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "CameraKit",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SCSDKCameraKit", targets: ["SCSDKCameraKit"]),
        .library(name: "SCSDKCameraKitBaseExtension", targets: ["SCSDKCameraKitBaseExtension_Wrapper"]),
        .library(name: "SCSDKCameraKitLoginKitAuth", targets: ["SCSDKCameraKitLoginKitAuth_Wrapper"]),
        .library(name: "SCSDKCameraKitPushToDeviceExtension", targets: ["SCSDKCameraKitPushToDeviceExtension_Wrapper"]),
        .library(name: "SCSDKCameraKitReferenceUI", targets: ["SCSDKCameraKitReferenceUI"]),
        .library(name: "SCSDKCameraKitReferenceSwiftUI", targets: ["SCSDKCameraKitReferenceSwiftUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Snapchat/snap-kit-spm", .upToNextMajor(from: "2.5.0"))
    ],
    targets: [
        .binaryTarget(
            name: "SCSDKCameraKit",
            url: "https://storage.googleapis.com/snap-kit-build/scsdk/camera-kit-ios/releases-spm/1.39.0/SCSDKCameraKit.xcframework.zip",
            checksum: "e027bd006fc4662f11737d6e895d26623cd95e715a0084c28e03004d53b8dc5d"
        ),
        
        .binaryTarget(
            name: "SCSDKCameraKitBaseExtension",
            url: "https://storage.googleapis.com/snap-kit-build/scsdk/camera-kit-ios/releases-spm/1.39.0/SCSDKCameraKitBaseExtension.xcframework.zip",
            checksum: "42925207edee95e92b01b00a5b5184d8bbb1670f38c555221969a2fa03fef301"
        ),
        .target(
            name: "SCSDKCameraKitBaseExtension_Wrapper",
            dependencies: [
                .target(name: "SCSDKCameraKitBaseExtension"),
                .target(name: "SCSDKCameraKit")
            ],
            path: "Sources/CameraKitBaseExtension_Wrapper"
        ),

        .binaryTarget(
            name: "SCSDKCameraKitLoginKitAuth",
            url: "https://storage.googleapis.com/snap-kit-build/scsdk/camera-kit-ios/releases-spm/1.39.0/SCSDKCameraKitLoginKitAuth.xcframework.zip",
            checksum: "4a7c66919651b7627c20e0790eab73f94ade9204a287d099e1f80dc19fe202b0"
        ),
        .target(
            name: "SCSDKCameraKitLoginKitAuth_Wrapper",
            dependencies: [
                .target(name: "SCSDKCameraKitLoginKitAuth"),
                .target(name: "SCSDKCameraKit"),
                .product(name: "SnapSDK", package: "snap-kit-spm")
            ],
            path: "Sources/CameraKitLoginKitAuth_Wrapper"
        ),

        .binaryTarget(
            name: "SCSDKCameraKitPushToDeviceExtension",
            url: "https://storage.googleapis.com/snap-kit-build/scsdk/camera-kit-ios/releases-spm/1.39.0/SCSDKCameraKitPushToDeviceExtension.xcframework.zip",
            checksum: "f52e78f701503798bd5a8eec9d8fa398ec4d3fc055f7b305998abb263318af7c"
        ),
        .target(
            name: "SCSDKCameraKitPushToDeviceExtension_Wrapper",
            dependencies: [
                .target(name: "SCSDKCameraKitPushToDeviceExtension"),
                .target(name: "SCSDKCameraKitBaseExtension_Wrapper"),
            ],
            path: "Sources/CameraKitPushToDeviceExtension_Wrapper"
        ),
                
        .target(name: "SCSDKCameraKitReferenceUI", dependencies: ["SCSDKCameraKit"], path: "Sources/SCSDKCameraKitReferenceUI"),
        .target(name: "SCSDKCameraKitReferenceSwiftUI", dependencies: ["SCSDKCameraKitReferenceUI"], path: "Sources/SCSDKCameraKitReferenceSwiftUI")
    ]
)
