**elepay iOS SDK** is made for your iOS Apps to easily import elepay multi-payment platform. For more details, please access the link below.
[→ Import Guide for elepay iOS SDK](https://developer.elepay.io/docs/ios-sdk)

## System Requirement

iOS 13.0 and above, Xcode 13 and above

> Starting April 24, 2025, apps uploaded to the App Store must be built with Xcode 16 or later. [via](https://developer.apple.com/news/upcoming-requirements/?id=02212025a)

> (ver 1.7.6 and below：iOS 9.0 and above, Xcode 11.3 and above)  
> (ver 2.3.5 and below: iOS 10 and above, Xcode 11.4 and above)  
> (ver 3.5.0 and below: iOS 11 and above, Xcode 13 and above)
> (ver 4.4.0 and below: iOS 12 and above, Xcode 13 and above)

## Swift Example App

You can download the usage sample for **elepay iOS SDK** from [here](https://github.com/elestyle/elepay-ios-demo-swift).

## Objective-C Bridge Example

If you are using **elepay iOS SDK** in Objective-C project, please check [here](https://github.com/elestyle/elepay-ios-demo-swift/blob/master/ELEPayObjectiveC/ElePayObjCBridge.swift) for the bridge example.

### elepay iOS SDK Update History

- v1.1.5 is the final version which compiled with Swift 4.2.1.
- From v1.2 the SDK is compiled with Swift 5.0.1.
- From v1.3.2 the SDK is compiled with Swift 5.1.
- From v1.6.0 the SDK is compiled with Swift 5.1.2.
- From v1.7.1, the SDK is compiled with "Build for Distribution" set to YES, so you can forget the Swift version from now on.
- From v2.0, the SDK is distributed in XCFramework format.
  Also the Framework name, module name and class name has been changed.
  `ElePay.framework → ElepaySDK.xcframework, ElePay → ElepaySDK, ElePay → Elepay`
- From v3.0.0, iOS 10 is no longer supported.
- v3.1.1 add SPM (Swift Package Manager) support. NOTE: This version will not be released to Cocoapods, use v3.1.0 instead.
- v4.0.0 is build by Xcode 14 (Swift 5.7), from this version, iOS 11 is no longer supported. Also Bitcode is no longer supported.
- v4.1.0 is build by Xcode 14.3 (Swift 5.8)
- v4.4.0 is build by Xcode 16.2 (Swift 6.0.3), add privacy manifests.
