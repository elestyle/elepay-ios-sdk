Pod::Spec.new do |s|
  s.name             = 'ElepayStripeApplePayPlugin'
  s.version          = '1.1.4'
  s.summary          = 'Elepay Stripe Apple Pay Plugin for ElepaySDK. Integrates Apple Pay processing via Stripe.'
  s.description      = <<-DESC
                         The Elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                         We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                         All you need to do is install it once,
                         then you can satisfy your customers's cashless payment requirement coming from all around the world.
                         DESC
  s.homepage         = 'https://www.elepay.io'
  s.license          = { :type => "Copyright", :text => "Copyright ELESTYLE, Inc. All Rights Reserved." }
  s.author           = { "ELESTYLE, Inc." => "info@elestyle.jp" }
  s.source           = { :http => "https://github.com/yangfan-elestyle/elepay-ios-sdk/releases/download/1.1.4/ElepayStripeApplePayPlugin-pods.xcframework.zip", :sha256 => "ce158c591cbf227b48e709e26117cf8a74514d08f4ef10ed175055518270b833" }

  s.platform         = :ios, "13.0"
  s.swift_versions   = ['5.10']

  s.dependency 'ElepaySDK'

  s.vendored_frameworks = [
    'ElepayStripeApplePayPlugin.xcframework',
    'StripeCore.xcframework',
    'StripeApplePay.xcframework',
  ]

  s.requires_arc = true

end 
