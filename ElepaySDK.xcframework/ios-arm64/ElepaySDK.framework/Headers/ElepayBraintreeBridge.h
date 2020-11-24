//
//  ElepayBraintreeBridge.h
//  Elepay
//
//  Created by xuzhe on 2019/10/22.
//  Copyright © 2019 ELESTYLE, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ElepayBraintreeBridge : NSObject

@property (nonatomic, strong, nullable) UIViewController *viewController;

//+ (instancetype)shared;
+ (BOOL)isBraintreeAvaliable;
+ (void)setReturnURLScheme:(NSString *)scheme;
+ (BOOL)handleOpenURL:(NSURL *)url options:(NSDictionary *)options;

- (void)makePayPalWithToken:(NSString *)token
                    payment:(NSString *)amount
               currencyCode:(NSString *)currency
                   callback:(void(^)(NSString * _Nullable nonce, NSError * _Nullable error))onResult;
@end

NS_ASSUME_NONNULL_END
