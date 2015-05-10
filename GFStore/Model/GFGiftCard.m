//
//  GFGiftCard.m
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFGiftCard.h"

@implementation GFGiftCard

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"gift_cards" : @"gift_cards",
             @"userInfo" : @"user_info",
             };
}

+ (NSValueTransformer *)userInfoJSONTransformer
{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[GFSponsorsUserInfo class]];
}

+ (NSValueTransformer *)gift_cardsJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[GFGiftCardItem class]];
}

@end


@implementation GFGiftCardItem

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"credits" : @"credits",
             @"detail" : @"detail",
             @"gift_name" : @"gift_name",
             @"icon" : @"icon",
             @"money" : @"money",
             };
}

@end
