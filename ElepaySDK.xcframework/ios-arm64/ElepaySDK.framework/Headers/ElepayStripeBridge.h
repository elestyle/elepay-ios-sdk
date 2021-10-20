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
@class STPCardParams;
@class STPCardValidator;
@class ElepayCardParams;
@class STPSource;
@class STPToken;
@class PKPayment;
@class UIViewController;

@interface ElepayStripeBridge : NSObject


+ (nullable Class)safeStripeClass;
+ (nullable Class)safeSTPAPIClientClass;
+ (nullable Class)safeSTPCardValidatorClass;

+ (void)setDefaultPublicKey:(NSString *)key;
+ (nullable STPCardParams *)convertElepayCardToSTPCard:(nullable NSString *)number
                                              expMonth:(NSUInteger)expMonth
                                               expYear:(NSUInteger)expYear
                                                   cvc:(nullable NSString *)cvc
                                                  name:(nullable NSString *)name
                                              currency:(nullable NSString *)currency;


+ (void)createTokenWithPayment:(PKPayment *)payment
           callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;
+ (void)createSourceWithPayment:(PKPayment *)payment
            callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;

+ (void)createTokenWithCard:(STPCardParams *)card
                   callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;
+ (void)createSourceWithCard:(STPCardParams *)card
                    callback:(void (^)(NSString * _Nullable, NSError * _Nullable))callback;

@end

NS_ASSUME_NONNULL_END
