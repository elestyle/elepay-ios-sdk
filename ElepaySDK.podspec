Pod::Spec.new do |s|
  s.name             = 'ElepaySDK'
  s.version          = '1.1.4'
  s.summary          = 'Elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.'
  s.description      = <<-DESC
                         The Elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                         We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                         All you need to do is install it once,
                         then you can satisfy your customers's cashless payment requirement coming from all around the world.
                         DESC
  s.homepage         = 'https://www.elepay.io'
  s.license          = { :type => "Copyright", :text => "Copyright ELESTYLE, Inc. All Rights Reserved." }
  s.author           = { "ELESTYLE, Inc." => "info@elestyle.jp" }
  s.source           = { :http => "https://github.com/yangfan-elestyle/elepay-ios-sdk/releases/download/1.1.4/ElepaySDK.xcframework.zip", :sha256 => "f28ce2f9dd36866958709e7a71b4a76e1b0bdd108bf0b1f9fc6c5ed930e385b3" }

  s.platform         = :ios, "13.0"
  s.swift_versions   = ['5.10']

  s.vendored_frameworks = 'ElepaySDK.xcframework'
  
  s.dependency 'ElepayCore'

  s.requires_arc = true
end 
