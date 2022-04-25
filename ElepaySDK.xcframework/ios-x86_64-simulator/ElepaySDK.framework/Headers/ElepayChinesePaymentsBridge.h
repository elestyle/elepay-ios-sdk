//
//  ElepayPlugInBridge.h
//  Elepay
//
//  Created by xuzhe on 2019/10/22.
//  Copyright © 2019 ELESTYLE, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ElepayChinesePaymentsBridge : NSObject

+ (BOOL)isAllpaySDKAvailable;
//MARK: - GoAllpay Bridge
+ (void)pay:(NSString *)tn mode:(BOOL)mode
     scheme:(NSString *)schemeStr viewController:(UIViewController *)viewController
   onResult:(void(^)(NSDictionary * _Nullable resultDic))onResult;

+ (void)openURL:(NSURL *)url;

//MARK: - WeChat Pay Bridge
+ (BOOL)isWechatPayAvailable;
+ (BOOL)isWXAppInstalled;
+ (BOOL)isWXAppSupportAPI;

+ (BOOL)registerWXApp:(NSString *)appid universalLink:(NSString *)universalLink;
+ (BOOL)handleWXOpenURL:(NSURL *)url;
+ (BOOL)handleWXOpenUniversalLink:(NSUserActivity *)userActivity;
+ (void)makeWXPayment:(NSDictionary *)params callback:(void(^)(NSInteger errCode, NSString *errMessage))onResult;

//MARK: - Alipay Bridge
+ (BOOL)isAlipayAvailable;
+ (void)processOrderWithPaymentResult:(NSURL *)url
                      standbyCallback:(void (^)(NSDictionary * _Nullable))callback;
+ (void)processAuth_V2ResultWithResultUrl:(NSURL *)url
                          standbyCallback:(void (^)(NSDictionary * _Nullable))callback;
+ (void)payOrderWithPayload:(NSString *)payload
                 fromScheme:(NSString *)scheme
                   callback:(void (^)(NSDictionary * _Nullable))callback;

//MARK: - UnionPay Bridge
+ (BOOL)startUPPayment:(NSString*)tn
            fromScheme:(NSString *)scheme
                  mode:(NSString*)mode
        viewController:(UIViewController*)viewController;
+ (BOOL)isUPAppInstalled;
+ (BOOL)isUnionPaySDKAvailable;
+ (void)handleUPOpenURL:(NSURL*)url
          completeBlock:(void(^)(NSString *code))completionBlock;

@end

NS_ASSUME_NONNULL_END
