Pod::Spec.new do |s|
  s.name         = "ElepaySDK"
  s.version      = "2.3.1"
  s.summary      = "elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app."
  s.description  = <<-DESC
                    The elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                    We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                    All you need to do is install it once,
                    then you can satisfy your customers's cashless payment requirement coming from all around the world.
                   DESC

  s.homepage     = "https://www.elepay.io"
  s.license        = { :type => "Copyright", :text => "Copyright 2020 ELESTYLE, Inc. All Rights Reserved." }
  s.author             = { "ELESTYLE, Inc." => "info@elestyle.jp" }

  s.platform     = :ios, "10.0"
  s.swift_versions = ['5.2', '5.3']
  s.xcconfig = {
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200__BUILD_12A7208' => 'arm64 arm64e armv7 armv7s armv6 armv8',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200__BUILD_12A7209' => 'arm64 arm64e armv7 armv7s armv6 armv8',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200__BUILD_12A7300' => 'arm64 arm64e armv7 armv7s armv6 armv8',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200__BUILD_12A7403' => 'arm64 arm64e armv7 armv7s armv6 armv8',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200' => '$(EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200__BUILD_$(XCODE_PRODUCT_BUILD_VERSION))',
    'EXCLUDED_ARCHS' => '$(inherited) $(EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_$(EFFECTIVE_PLATFORM_SUFFIX)__NATIVE_ARCH_64_BIT_$(NATIVE_ARCH_64_BIT)__XCODE_$(XCODE_VERSION_MAJOR))'}

  s.source       = { :git => "https://github.com/elestyle/elepay-ios-sdk.git", :tag => "#{s.version}" }

  s.vendored_frameworks = "ElepaySDK.xcframework"

  s.requires_arc = true
end
