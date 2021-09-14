// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ElepaySDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ElepaySDK",
            targets: ["ElepaySDK"]),
    ],
    dependencies: [
        // No dependencies, but you may want to use Elepay_ChinesePayments_Plugin or Stripe, Braintree, etc. You should add them youself.
    ],
    targets: [
        .binaryTarget(
            name: "ElepaySDK",
            path: "ElepaySDK.xcframework"
        )
    ]
)
