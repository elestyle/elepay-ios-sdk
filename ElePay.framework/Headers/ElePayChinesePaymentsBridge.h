//
//  ElePayPlugInBridge.h
//  ElePay
//
//  Created by xuzhe on 2019/10/22.
//  Copyright © 2019 ELESTYLE, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ElePayChinesePaymentsBridge : NSObject

+ (BOOL)isChinesePaymentsAvaliable;
+ (void)pay:(NSString *)tn mode:(BOOL)mode scheme:(NSString *)schemeStr viewController:(UIViewController *)viewController
   onResult:(void(^)(NSDictionary * _Nullable resultDic))onResult;

+ (void)openURL:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
