# elepay-ios-sdk

## 日本語

elepay iOS SDK は elepay を iOS アプリに導入するための SDK です。  
具体的な導入ガイドは以下の URLでご確認ください。
[→ elepay iOS SDK 導入ガイド](https://developer.elepay.io/docs/ios-sdk)

## システム要件

iOS 12.0 以上、Xcode 14 以上  
(1.7.6 以前のバージョンは：iOS 9.0 以上、Xcode 11.3 以上)  
(2.3.5 以前のバージョンは：iOS 10 以上、Xcode 11.4 以上)  
(3.5.0 以前のバージョンは：iOS 11 以上、Xcode 13 以上)  

## Swift Demo App

elepay iOS SDK のサンプルは[こちら](https://github.com/elestyle/elepay-ios-demo-swift)からダウンロード出来ます。

## Objective-C Bridge サンプル

Objective-C のプロジェクトで elepay iOS SDK を利用する場合は[こちら](https://github.com/elestyle/elepay-ios-demo-swift/blob/master/ELEPayObjectiveC/ElePayObjCBridge.swift)の Swift ファイルをご参考ください。

### elepay iOS SDK 履歴

* v1.1.5 は Swift 4.2.1 でビルドした最後のバージョンです。
* v1.2 からは Swift 5.0.1 でビルドします。
* v1.3.2 からは Swift 5.1 でビルドします。
* v1.6.0 からは Swift 5.1.2 でビルドします。
* v1.7.1 からは「Build for Distribution」でコンパイルしますので、その後 Swift のバージョンを気にしなくてご利用できます。
* v2.0 から、XCFramework の導入に伴う、Framework と Module、Class 名が変更しました。
    ```ElePay.framework → ElepaySDK.xcframework, ElePay → ElepaySDK, ElePay → Elepay```。
* v3.0.0 から、iOS 10 のサポートが終了しました。  
* v3.1.1 は SPM (Swift Package Manager) にサポートしました。ご注意：このバージョンは Cocoapods にリリースしていませんので、Cocoapods ご利用の場合は v3.1.0 を利用してください。
* v4.0.0 は Xcode 14 (Swift 5.7) でビルドしました。このバージョンから iOS 11 のサポートが終了しました。Bitcode のサポートが終了しました。  
* v4.1.0 は Xcode 14.3 (Swift 5.8)でビルドしました。  
* v4.4.0 は Xcode 16.2 (Swift 6.0.3)でビルドしました、プライバシーマニフェストを追加しました。

## English

**elepay iOS SDK** is made for your iOS Apps to easily import elepay multi-payment platform. For more details, please access the link below.
[→ Import Guide for elepay iOS SDK](https://developer.elepay.io/docs/ios-sdk)

## System Requirement

iOS 12.0 and above, Xcode 14 and above  
(ver 1.7.6 and below：iOS 9.0 and above, Xcode 11.3 and above)  
(ver 2.3.5 and below: iOS 10 and above, Xcode 11.4 and above)  
(ver 3.5.0 and below: iOS 11 and above, Xcode 13 and above)  

## Swift Demo App

You can download the usage sample for **elepay iOS SDK** from [here](https://github.com/elestyle/elepay-ios-demo-swift).

## Objective-C Bridge Example

If you are using **elepay iOS SDK** in Objective-C project, please check [here](https://github.com/elestyle/elepay-ios-demo-swift/blob/master/ELEPayObjectiveC/ElePayObjCBridge.swift) for the bridge example.

### elepay iOS SDK Update History

* v1.1.5 is the final version which compiled with Swift 4.2.1.
* From v1.2 the SDK is compiled with Swift 5.0.1.
* From v1.3.2 the SDK is compiled with Swift 5.1.
* From v1.6.0 the SDK is compiled with Swift 5.1.2.
* From v1.7.1, the SDK is compiled with "Build for Distribution" set to YES, so you can forget the Swift version from now on.
* From v2.0, the SDK is distributed in XCFramework format.
  Also the Framework name,  module name and class name has been changed.
    ```ElePay.framework → ElepaySDK.xcframework, ElePay → ElepaySDK, ElePay → Elepay```
* From v3.0.0, iOS 10 is no longer supported.  
* v3.1.1 add SPM (Swift Package Manager) support. NOTE: This version will not be released to Cocoapods, use v3.1.0 instead.
* v4.0.0 is build by Xcode 14 (Swift 5.7), from this version, iOS 11 is no longer supported. Also Bitcode is no longer supported.
* v4.1.0 is build by Xcode 14.3 (Swift 5.8)
* v4.4.0 is build by Xcode 16.2 (Swift 6.0.3), add privacy manifests.
