//
//  GFConfiguration.m
//  GFStore
//
//  Created by guotianji on 15/4/16.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFConfiguration.h"

@implementation GFConfiguration

+ (instancetype )sharedInstance
{
    __strong static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)setCookies:(NSArray *)cookies
{
    
}

@end
