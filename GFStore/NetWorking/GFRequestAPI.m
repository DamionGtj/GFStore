//
//  GFRequestAPI.m
//  GFStore
//
//  Created by guotianji on 15/4/16.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFRequestAPI.h"
#import "GFRequest.h"
#import "GTJNetworkAgent.h"
#import <AdSupport/AdSupport.h>

@implementation GFRequestAPI

+ (void)requestSponsorsListWithClassName:(NSString *)className completionBlock:(GTJObjectCompletionBlock)block {
    
    NSString *os_version = [[UIDevice currentDevice] systemVersion];
    NSString *device = [[UIDevice currentDevice] model];
    NSString *adId =[[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    NSDictionary* infoDict =[[NSBundle mainBundle] infoDictionary];
    NSString* versionNum =[infoDict objectForKey:@"CFBundleVersion"];
    NSString* appName =[infoDict objectForKey:@"CFBundleDisplayName"];
    
    NSString *local = [[NSBundle mainBundle] preferredLocalizations][0];
    
    NSDictionary *parameterDictionary = @{@"app_id": appName,
                           @"idfa": adId,
                           @"app_version": versionNum,
                           @"locale": local,
                           @"os_version": os_version,
                           @"device": device};
    
    //创建请求对象
    GFRequest *registerRequest = [GFRequest requestWithUrl:@"http://52.1.180.135/www.appsgiftshop.com/api_test_bruce/sponsor.php?" parameters:parameterDictionary method:GTJRequestMethodGet className:className];
    
    [registerRequest setCompletionBlock:block];
    //发送请求
    [[GTJNetworkAgent sharedInstance]sendRequest:registerRequest];
}


+ (void)requestGiftCardWithClassName:(NSString *)className completionBlock:(GTJObjectCompletionBlock)block {
    NSString *os_version = [[UIDevice currentDevice] systemVersion];
    NSString *device = [[UIDevice currentDevice] model];
    NSString *adId =[[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    NSDictionary* infoDict =[[NSBundle mainBundle] infoDictionary];
    NSString* versionNum =[infoDict objectForKey:@"CFBundleVersion"];
    NSString* appName =[infoDict objectForKey:@"CFBundleDisplayName"];
    
    NSString *local = [[NSBundle mainBundle] preferredLocalizations][0];
    
    NSDictionary *parameterDictionary = @{@"app_id": appName,
                                          @"idfa": adId,
                                          @"app_version": versionNum,
                                          @"locale": local,
                                          @"os_version": os_version,
                                          @"device": device};
    
    //创建请求对象
    GFRequest *registerRequest = [GFRequest requestWithUrl:@"http://52.1.180.135/www.appsgiftshop.com/api_test_bruce/gift.php?" parameters:parameterDictionary method:GTJRequestMethodGet className:className];
    
    [registerRequest setCompletionBlock:block];
    //发送请求
    [[GTJNetworkAgent sharedInstance]sendRequest:registerRequest];
}

+ (void)requestHotappsWithClassName:(NSString *)className completionBlock:(GTJObjectCompletionBlock)block {
    NSString *os_version = [[UIDevice currentDevice] systemVersion];
    NSString *device = [[UIDevice currentDevice] model];
    NSString *adId =[[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    NSDictionary* infoDict =[[NSBundle mainBundle] infoDictionary];
    NSString* versionNum =[infoDict objectForKey:@"CFBundleVersion"];
    NSString* appName =[infoDict objectForKey:@"CFBundleDisplayName"];
    
    NSString *local = [[NSBundle mainBundle] preferredLocalizations][0];
    
    NSDictionary *parameterDictionary = @{@"app_id": appName,
                                          @"idfa": adId,
                                          @"app_version": versionNum,
                                          @"locale": local,
                                          @"os_version": os_version,
                                          @"device": device};
    
    //创建请求对象
    GFRequest *registerRequest = [GFRequest requestWithUrl:@"http://52.1.180.135/www.appsgiftshop.com/api_test_bruce/hotapp.php?" parameters:parameterDictionary method:GTJRequestMethodGet className:className];
    
    [registerRequest setCompletionBlock:block];
    //发送请求
    [[GTJNetworkAgent sharedInstance]sendRequest:registerRequest];
}

@end
