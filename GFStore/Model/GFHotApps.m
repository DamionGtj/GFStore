//
//  GFHotApps.m
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFHotApps.h"

@implementation GFHotApps

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"userInfo": @"user_info",
             @"hot_apps": @"hot_apps",
             };
}

+ (NSValueTransformer *)userInfoJSONTransformer
{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[GFSponsorsUserInfo class]];
}

+ (NSValueTransformer *)hot_appsJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[GFHotAppItem class]];
}

@end



@implementation GFHotAppItem

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"ads_text": @"ads_text",
             @"app_id": @"app_id",
             @"app_name": @"app_name",
             @"icon_link": @"icon_link",
             @"tracking_link": @"tracking_link",
             @"click_time": @"click_time",
             };
}


@end
