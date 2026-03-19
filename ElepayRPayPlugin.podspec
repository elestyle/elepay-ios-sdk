Pod::Spec.new do |s|
  s.name             = 'ElepayRPayPlugin'
  s.version          = '5.0.5'
  s.summary          = 'Elepay RPay Plugin for ElepaySDK. Integrates RPay payment processing.'
  s.description      = <<-DESC
                         The Elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                         We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                         All you need to do is install it once,
                         then you can satisfy your customers's cashless payment requirement coming from all around the world.
                         DESC
  s.homepage         = 'https://www.elepay.io'
  s.license          = { :type => "Copyright", :text => "Copyright ELESTYLE, Inc. All Rights Reserved." }
  s.author           = { "ELESTYLE, Inc." => "info@elestyle.jp" }
  s.source           = { :http => "https://github.com/elestyle/elepay-ios-sdk/releases/download/5.0.5/ElepayRPayPlugin.xcframework.zip", :sha256 => "d0eedd03e5bee659f9f539a9f285c07c689649f25cbabe92f17dc8d379d4903d" }

  s.platform         = :ios, "13.0"
  s.swift_versions   = ['5.10']

  s.dependency 'ElepaySDK'

  s.vendored_frameworks = 'ElepayRPayPlugin.xcframework'
  s.requires_arc = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end 
