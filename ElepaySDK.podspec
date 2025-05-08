Pod::Spec.new do |s|
  s.name         = "ElepaySDK"
  s.version      = "4.5.0"
  s.summary      = "elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app."
  s.description  = <<-DESC
                    The elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                    We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                    All you need to do is install it once,
                    then you can satisfy your customers's cashless payment requirement coming from all around the world.
                   DESC

  s.homepage     = "https://www.elepay.io"
  s.license        = { :type => "Copyright", :text => "Copyright ELESTYLE, Inc. All Rights Reserved." }
  s.author             = { "ELESTYLE, Inc." => "info@elestyle.jp" }

  s.platform     = :ios, "12.0"
  s.swift_versions = ['6.0']

  s.source       = { :git => "https://github.com/elestyle/elepay-ios-sdk.git", :tag => "#{s.version}" }
  s.vendored_frameworks = "ElepaySDK.xcframework"
  s.requires_arc = true

  # https://github.com/CocoaPods/CocoaPods/issues/10065#issuecomment-694266259
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
