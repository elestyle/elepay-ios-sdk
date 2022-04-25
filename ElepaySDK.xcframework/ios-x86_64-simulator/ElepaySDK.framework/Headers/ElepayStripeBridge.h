//
//  ElepayStripeBridge.h
//  ElepaySDK
//
//  Created by xuzhe on 2020/08/25.
//  Copyright © 2020 ELESTYLE, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class StripeAPI;
@class STPAPIClient;
@class STPPaymentConfiguration;
@class STPSourceParams;
@class STPRedirectContext;
@class STPCardValidator;
@class STPSource;
@class STPToken;
@class STPApplePayContext;
@class PKPaymentRequest;
@class PKPayment;
@class UIViewController;
@protocol STPAuthenticationContext;

typedef NS_ENUM(NSInteger, StripeBridgePaymentStatus) {
    StripeBridgePaymentStatusSucceeded = 0,
    StripeBridgePaymentStatusCancelled = 1,
    StripeBridgePaymentStatusFailed = 2,
};

typedef NS_ENUM(NSInteger, StripeBridgeCardValidationState) {
    StripeBridgeCardValidationStateValid = 0,
    StripeBridgeCardValidationStateInvalid = 1,
    StripeBridgeCardValidationStateIncomplete = 2,
};

@protocol ApplePayContextDelegateBridge <NSObject>

- (void)applePayContext:(StripeBridgePaymentStatus)status error:(NSError *)error;

@end


@interface ElepayCardBridge : NSObject

@property(nonatomic, nullable, strong) NSString * number;
@property(nonatomic, assign) NSUInteger expMonth;
@property(nonatomic, assign) NSUInteger expYear;
@property(nonatomic, nullable, strong) NSString * cvc;
@property(nonatomic, nullable, strong) NSString * name;
@property(nonatomic, nullable, strong) NSString * address;
@property(nonatomic, nullable, strong) NSString * currency;

@end


@interface ElepayStripeBridge : NSObject

@property(nonatomic, weak) id<ApplePayContextDelegateBridge> delegate;

+ (nullable Class)safeStripeClass;
+ (nullable Class)safeSTPAPIClientClass;
+ (nullable Class)safeSTPCardValidatorClass;

+ (void)setDefaultPublicKey:(NSString *)key;
+ (StripeBridgeCardValidationState)validationStateForBridgeCard:(ElepayCardBridge *)card;

// Original Charge and Source
+ (void)createTokenWithPayment:(PKPayment *)payment
           callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;
+ (void)createSourceWithPayment:(PKPayment *)payment
            callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;

+ (void)createTokenWithCard:(ElepayCardBridge *)card
                   callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;
+ (void)createSourceWithCard:(ElepayCardBridge *)card
                    callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;

// Payment Intent and Setup Intent
+ (void)confirmPaymentWithCard:(ElepayCardBridge *)card
                  clientSecret:(NSString *)secret
         authenticationContext:(id <STPAuthenticationContext>)context
                      isCharge: (BOOL)isCharge
                      callback:(void (^)(StripeBridgePaymentStatus, NSError * _Nullable))callback;

- (nullable STPApplePayContext *)createApplePayContextWithPaymentRequest:(PKPaymentRequest *)request
                                                            clientSecret: (NSString *)secret
                                                                delegate:(id <ApplePayContextDelegateBridge>)delegate;
+ (void)presentApplePayContext:(STPApplePayContext *)context;
+ (BOOL)handleURLCallback:(NSURL *)url;

// MARK: - StripeApplePayPlugin
+ (nullable Class)safeApplePayPluginClass;
+ (void)setApplePayPluginDefaultPublicKey:(NSString *)key;
+ (BOOL)pluginDeviceSupportsApplePay;
- (BOOL)makeApplePayWithPlugin:(PKPaymentRequest *)request
                  clientSecret: (NSString *)secret
                      delegate:(id <ApplePayContextDelegateBridge>)delegate;
+ (PKPaymentRequest *)pluginPaymentRequestWithMerchantIdentifier:(NSString *)merchantIdentifier
                                                         country:(NSString *)countryCode
                                                        currency:(NSString *)currencyCode;

@end

NS_ASSUME_NONNULL_END
