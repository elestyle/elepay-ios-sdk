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

+ (void)handleSource:(STPSource *)source
                  vc:(UIViewController *)vc
            callback:(void(^)(NSString * sourceId,
                              NSString * _Nullable clientSecret,
                              NSError * _Nullable error))callback;

+ (NSString *)getTokenId:(STPToken *)token;
+ (NSString *)getSourceId:(STPSource *)source;
+ (BOOL)checkSourceStatus:(STPSource *)source;
+ (STPSourceParams *)cardParamsWithCard:(STPCardParams *)cardParams;
@end

NS_ASSUME_NONNULL_END
