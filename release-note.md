# ElepaySDK for iOS Release Note

ElepaySDK use [semantic versioning](http://semver.org/).
Starting from v2.0.0, we start distributing ElepaySDK for iOS in XCFramework format.

## 3.0 - alpha 2

> New Features
>
> 1. Update Stripe framework support to v21.x
>

## 2.3.5

> New Features
>
> 1. Add Source Support for PayPay, LINEPay, paidy and Amazon Pay (Sources can be charged directly, or attached to customers for later reuse.
>

## 2.3.4

> New Features
>
> 1. Shrunk the SDK for universal descriptors when uncompressed to 2MB, allowing for easier App Clips integration.
>

## 2.3.3

> New Features
>
> 1. Add new error code for 3rd party payment App not installed situation
> 2. Shrunk the SDK when compressed & thinned to 5MB, allowing for easier App Clips integration.
>

## 2.3.2

> Bug Fix
>
> 1. Upadated error report timestamp format
>

## 2.3.1

> Bug Fix
>
> 1. Improved Failure Report for better error analysis
>

## 2.3

> New Features
>
> 1. Build with Xcode 12.0.1 (12A7300)
> 2. Cocoapods 1.10.0.rc.1 required.
>
> Bug Fix
>
> 1. Fix "Rebuild from Bitcode" error when Stripe is not imported.
>
> TODO
>
> 1. ARM64 for iOS Simulator architecture is not supported yet due to some 3rd party frameworks.

## 2.2

> New Features
>
> 1. From ElepaySDK 2.2, we use Stripe as a weak linked Framework. You can use it either as a dynamic framework or as a static framework.

## 2.1.4

> New Features
>
> 1. Add support for "au PAY"
>
> Bug Fix
>
> 1. Improve network stability

## 2.1.3

> Bug Fix
>
> 1. FIXED: Fix "image not found" runtime error when Elepay_ChinesePayments_Plugin not imported.

## 2.1.2

> Bug Fix
>
> 1. FIXED: Fixed a transition issue of EasyCheckout on iOS version before 13

## 2.1.1

> Bug Fix
>
> 1. FIXED: **EasyCheckout** methods using JSON String and JSON Data is not working as expected.

## 2.1.0

> New Features
>
> 1. Add **EasyCheckout** support
> 2. Update Multi-language language code
> 3. Build with Xcode 11.6

## 2.0.0

The first version of ElepaySDK for iOS distributing in XCFramework bundle format.

> New Features
>
> 1. Add Dark Mode support
> use `Elepay.userInterfaceStyle` to set up.
> 2. XCFramework support

## Credits

Slightly modified version originally created by [elepay provided by ELESTYLE, Inc.](https://elepay.io).
