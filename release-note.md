# ElepaySDK for iOS Release Note

ElepaySDK use [semantic versioning](http://semver.org/).
Starting from v2.0.0, we start distributing ElepaySDK for iOS in XCFramework format.

## 4.4.0

> Bug Fix
>
> 1. Add Privacy Manifests.

## 4.3.1

> New Features
>
> 1. Do not retrieve the provider configuration when the SDK is initialized, but rather when the user attempts to make a payment for the first time.

## 4.3.0

> New Features
>
> 1. Add support for more payment methods without the need to update the SDK in the future.
> 2. Integrate support for Naver Pay and Toss Pay.

## 4.2.0

> New Features
>
> 1. Add Rakuten Bank pre-authorization support.

## 4.1.0

> New Features
>
> 1. Rebuild with Xcode 14.3 (Swift 5.8)
> 2. Add new Alipay+ payment method support (DANA, TrueMoney Wallet, Rabbit LINE Pay, BPI, BOOST, HelloMoney)

## 4.0.2

> New Features
>
> 1. Rebuild with Stripe SDK for iOS v22.8.4 (Since we still want to support iOS 12, we will not update to the Stripe SDK for iOS v23 until iOS 17 is released).
>
> Bug Fix
>
> 1. FIXED: Stripe Framework are no longer required if you are not using Credit Card payment method in your App (happend in 4.0.1).

## 4.0.1

> New Features
>
> 1. Add two public property for getting SDK version and build number at runtime.
>
> Bug Fix
>
> 1. FIXED: Wrong HTTP Header Field

## 4.0.0

> New Features
>
> 1. The elepay iOS SDK requires Xcode 14 or later and is compatible with apps targeting iOS 12 or above.
> 2. Add Card Scan support (iOS 13 or above required).
> 3. Compiled using Xcode 14 (Swift 5.7)
> 4. Bitcode will no longer be supported from this version.
> 5. Removed Braintree support. We will add PayPal directly support in the future.

## 3.5.0

> New Features
>
> 1. Add Alipay+ source support. (Sources can be charged directly, or attached to customers for later recharge)

## 3.4.1

> Bug Fixes
>
> 1. Fixed: Apple Pay may not display the correct amount on some iOS versions.

## 3.4.0

> New Features
>
> 1. Add Credit Card (Rakuten Bank) support, also supports 3DS2.
> 2. Add GMO Payment Gateway Credit Card supoort.
> 3. Add Sony Payment Services Credit Card support.
> 4. **App Clips**: The `Elepay-StripeApplePay-Plugin` provides a lightweight plugin for offering Apple Pay in an App Clip.  
>    _You can now remove Stripe SDK when making App Clips to reduce the binary size.  
>    The `Elepay-StripeApplePay-Plugin` already has StripeApplePay SDK embedded, so you need to import only `ElepaySDK` and `Elepay-StripeApplePay-Plugin` when buiding your App Clip.  
>    For more details about this plugin, please reference the link [here](https://github.com/elestyle/elepay-stripeapplepay-plugin)._

## 3.3.0

> New Features
>
> 1. Add Credit Card (Stripe) 3DS2 support.
> 2. Updated SDK Documentation (ElepaySDK.doccarchive). You can import it into Xcode 13 or later.

## 3.2.2

> New Features
>
> 1. Add a new Web-Based Process for Alipay+ to handle some payment App may not redirect back to your App automatically.  
>    In this case, users need to go back to your App manually (Yes, we know the experiance is bad, we are working closely with Alipay+ to improve this).

## 3.2.1

> New Features
>
> 1. Move payment method icons to CDN server for easier payment brand update and reduce the size of SDK itself.
> 2. Payment method icons' local cache supported.
> 3. Add Alipay+ to EasyCheckout feature.
> 4. Remove canOpenURL requirement from au PAY, JCoinPay, LINE Pay and PayPay

## 3.2.0

> New Features
>
> 1. Add Apple Pay source support. You can add Apple Pay as a payment method to your customer for further charge.
> 2. Add UnionPay directly connect support.
> 3. Add a workaround for some new version (21.9.0) of Stripe's Swift SDK, due to it's Objective-C support is frequently changing recently.
> 4. Add Alipay+ support (Charge only, Source & EasyCheckout still on work)

## 3.1.1

> New Features
>
> 1. SPM (Swift Package Manager) supported.  
>    NOTE: This version will not be released to Cocoapods, use v3.1.0 instead.

## 3.1.0

> New Features
>
> 1. Update Stripe framework for Xcode 12.5 & Xcode 13 beta support
> 2. Add support RPay (Rakuten Pay)
> 3. Minor improvements

## 3.0

> New Features
>
> 1. Update Stripe framework support to v21.x
> 2. Drop iOS 10 support

## 2.3.5

> New Features
>
> 1. Add Source Support for PayPay, LINEPay, paidy and Amazon Pay (Sources can be charged directly, or attached to customers for later reuse).

## 2.3.4

> New Features
>
> 1. Shrunk the SDK for universal descriptors when uncompressed to 2MB, allowing for easier App Clips integration.

## 2.3.3

> New Features
>
> 1. Add new error code for 3rd party payment App not installed situation
> 2. Shrunk the SDK when compressed & thinned to 5MB, allowing for easier App Clips integration.

## 2.3.2

> Bug Fix
>
> 1. Upadated error report timestamp format

## 2.3.1

> Bug Fix
>
> 1. Improved Failure Report for better error analysis

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
>    use `Elepay.userInterfaceStyle` to set up.
> 2. XCFramework support

## Credits

Slightly modified version originally created by [elepay provided by ELESTYLE, Inc.](https://elepay.io).
