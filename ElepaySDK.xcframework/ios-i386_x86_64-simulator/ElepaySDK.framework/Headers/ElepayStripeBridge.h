//
//  ElepayStripeBridge.h
//  ElepaySDK
//
//  Created by xuzhe on 2020/08/25.
//  Copyright © 2020 ELESTYLE, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Stripe;
@class STPAPIClient;
@class STPPaymentConfiguration;
@class STPSourceParams;
@class STPRedirectContext;
@class STPCardParams;
@class STPCardValidator;
@class ElepayCardParams;

@interface ElepayStripeBridge : NSObject

+ (nullable Stripe *)safeStripeClass;
+ (nullable STPAPIClient *)safeSTPAPIClientClass;
+ (nullable STPPaymentConfiguration *)safeSTPPaymentConfigurationClass;
+ (nullable STPSourceParams *)safeSTPSourceParamsClass;
+ (nullable STPRedirectContext *)safeSTPRedirectContextClass;
+ (nullable STPCardParams *)safeSTPCardParamsClass;
+ (nullable STPCardValidator *)safeSTPCardValidatorClass;

+ (nullable STPCardParams *)convertElepayCardToSTPCard:(nullable NSString *)number
                                              expMonth:(NSUInteger)expMonth
                                               expYear:(NSUInteger)expYear
                                                   cvc:(nullable NSString *)cvc
                                                  name:(nullable NSString *)name
                                              currency:(nullable NSString *)currency;

@end

NS_ASSUME_NONNULL_END
