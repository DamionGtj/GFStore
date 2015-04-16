//
//  GFConfiguration.h
//  GFStore
//
//  Created by guotianji on 15/4/16.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GFConfiguration : NSObject

//单例类
+ (instancetype )sharedInstance;

//设置cookies
- (void)setCookies:(NSArray *)cookies;

@end
