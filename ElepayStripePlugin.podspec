Pod::Spec.new do |s|
  s.name             = 'ElepayStripePlugin'
  s.version          = '1.1.4'
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
  s.source           = { :http => "https://github.com/yangfan-elestyle/elepay-ios-sdk/releases/download/1.1.4/ElepayStripePlugin-pods.xcframework.zip", :sha256 => "02cc2cf5956d94cf92fb638a0beab7fde1357a10827a00cc66977ec4c3ec1c88" }

  
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
