//
//  GFRequestAPI.h
//  GFStore
//
//  Created by guotianji on 15/4/16.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GTJCompletionBlocks.h"
#import "GTJRequest.h"

@interface GFRequestAPI : NSObject

/**
 *  获取sponsorsList
 *
 */
+ (void)requestSponsorsListWithClassName:(NSString *)className completionBlock:(GTJObjectCompletionBlock)block;

/**
 *  获取GiftCard列表
 *
 *  @param className
 *  @param block
 */
+ (void)requestGiftCardWithClassName:(NSString *)className completionBlock:(GTJObjectCompletionBlock)block;


/**
 *  获取Hot apps列表
 *
 *  @param className
 *  @param block
 */
+ (void)requestHotappsWithClassName:(NSString *)className completionBlock:(GTJObjectCompletionBlock)block;

@end
