Pod::Spec.new do |s|
  s.name         = "ElePay"
  s.version      = "1.8.1"
  s.summary      = "Deprecated: This Pod ElePay will be deprecated from v2.0. Please use ElepaySDK instead."
  s.description  = <<-DESC
                    elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.

                    The elepay iOS SDK makes it easy to build a stable and secure multi-channel payment experience in your iOS app.
                    We provide powerful SDK to support multi-payment methods like Credit Card, PayPay, LINE Pay, Paidly, PayPal, Alipay, WeChat Pay, etc.
                    All you need to do is install it once,
                    then you can satisfy your customers's cashless payment requirement coming from all around the world.
                   DESC

  s.homepage     = "https://www.elepay.io"
  s.license        = { :type => "Copyright", :text => "Copyright 2019 ELESTYLE, Inc. All Rights Reserved." }
  s.author             = { "ELESTYLE, Inc." => "info@elestyle.jp" }

  s.platform     = :ios, "10.0"
  s.swift_version = '5.2'

  s.source       = { :git => "https://github.com/elestyle/elepay-ios-sdk.git", :tag => "#{s.version}" }

  s.vendored_frameworks = "ElePay.framework"

  s.requires_arc = true

  s.dependency "Stripe", '19.1.1'

  s.deprecated_in_favor_of = 'ElepaySDK'

end
