//
//  ElePayPlugInBridge.h
//  ElePay
//
//  Created by xuzhe on 2019/10/22.
//  Copyright © 2019 ELESTYLE, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/*! @brief 错误码
 *
 */
enum  ElePayWXErrCode: NSInteger {
    ElePayWXSuccess         = 0,    /**< 成功*/
    ElePayWXErrCodeOther    = -1,   /**< 普通错误类型*/
    ElePayWXCancel          = -2,   /**< 用户点击取消并返回*/
};

@interface ElePayChinesePaymentsBridge : NSObject

+ (BOOL)isChinesePaymentsAvaliable;
+ (void)pay:(NSString *)tn mode:(BOOL)mode scheme:(NSString *)schemeStr viewController:(UIViewController *)viewController
   onResult:(void(^)(NSDictionary * _Nullable resultDic))onResult;

+ (void)openURL:(NSURL *)url;

// WeChat Pay Bridge

+ (BOOL)isWXAppInstalled;
+ (BOOL)isWXAppSupportApi;

+ (BOOL)registerWXApp:(NSString *)appid universalLink:(NSString *)universalLink;
+ (BOOL)handleWXOpenURL:(NSURL *)url;
+ (BOOL)handleWXOpenUniversalLink:(NSUserActivity *)userActivity;
+ (void)makeWXPayment:(NSDictionary *)params callback:(void(^)(NSInteger errCode, NSString *errMessage))onResult;

@end

NS_ASSUME_NONNULL_END
