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

@interface ElepayStripeBridge : NSObject

+ (nullable Stripe *)safeStripeClass;
+ (nullable STPAPIClient *)safeSTPAPIClientClass;
+ (nullable STPPaymentConfiguration *)safeSTPPaymentConfigurationClass;
+ (nullable STPSourceParams *)safeSTPSourceParamsClass;
+ (nullable STPRedirectContext *)safeSTPRedirectContextClass;
+ (nullable STPCardParams *)safeSTPCardParamsClass;
+ (nullable STPCardValidator *)safeSTPCardValidatorClass;

@end

NS_ASSUME_NONNULL_END
