Pod::Spec.new do |s|
  s.name             = 'ElepayStripePlugin'
  s.version          = '5.0.5'
  s.summary          = 'Elepay Stripe Plugin for ElepaySDK. Integrates Stripe payment processing.'
  s.description      = <<-DESC
                         The Elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                         We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                         All you need to do is install it once,
                         then you can satisfy your customers's cashless payment requirement coming from all around the world.
                         DESC
  s.homepage         = 'https://www.elepay.io'
  s.license          = { :type => "Copyright", :text => "Copyright ELESTYLE, Inc. All Rights Reserved." }
  s.author           = { "ELESTYLE, Inc." => "info@elestyle.jp" }
  s.source           = { :http => "https://github.com/elestyle/elepay-ios-sdk/releases/download/5.0.5/ElepayStripePlugin-pods.xcframework.zip", :sha256 => "1c2967f142c5950b9e9ca882ec50c0aad4657bc452005ad34a8a8c6124764a67" }

  
  s.platform         = :ios, "13.0"
  s.swift_versions   = ['5.10']

  s.dependency 'ElepaySDK'

  s.vendored_frameworks = [
    'ElepayStripePlugin.xcframework',
    'StripeCore.xcframework',
    'Stripe.xcframework',
    'StripeApplePay.xcframework',
    'Stripe3DS2.xcframework',
    'StripeUICore.xcframework',
    'StripePayments.xcframework',
    'StripePaymentsUI.xcframework'
  ]

  s.requires_arc = true

end 
