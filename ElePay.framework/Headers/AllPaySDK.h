//
//  AllPaySDK.h
//  AllPaySDK
//
//  Created by BensonZhang on 15/11/18.
//  Copyright © 2015年 xunlian. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AllPaySDK : NSObject

+(void)pay:(NSString *)tn  mode:(BOOL)mode    scheme:(NSString *)schemeStr   ViewController:(UIViewController *)viewController     onResult:(void(^)(NSDictionary * resultDic))onResult;
+(void)openURL:(NSURL *)url;
@end

