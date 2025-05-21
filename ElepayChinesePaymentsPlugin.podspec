Pod::Spec.new do |s|
  s.name             = 'ElepayChinesePaymentsPlugin'
  s.version          = '1.1.4'
  s.summary          = 'Elepay Chinese Payments Plugin for ElepaySDK. Integrates Chinese payment methods like Alipay, WeChat Pay.'
  s.description      = <<-DESC
                         The Elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                         We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                         All you need to do is install it once,
                         then you can satisfy your customers's cashless payment requirement coming from all around the world.
                         DESC
  s.homepage         = 'https://www.elepay.io'
  s.license          = { :type => "Copyright", :text => "Copyright ELESTYLE, Inc. All Rights Reserved." }
  s.author           = { "ELESTYLE, Inc." => "info@elestyle.jp" }
  s.source           = { :http => "https://github.com/yangfan-elestyle/elepay-ios-sdk/releases/download/1.1.4/ElepayChinesePaymentsPlugin.xcframework.zip", :sha256 => "e0a0dbf01635548413d8c3dc51b5f967792fab61e852df46084937abb157f59d" }

  s.platform         = :ios, "13.0"
  s.swift_versions   = ['5.10']

  s.dependency 'ElepaySDK'

  s.vendored_frameworks = 'ElepayChinesePaymentsPlugin.xcframework'
  s.requires_arc = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end 
