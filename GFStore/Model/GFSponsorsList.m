//
//  GFSponsorsList.m
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFSponsorsList.h"

@implementation GFSponsorsList

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"comments" : @"comments",
             @"sponsorApps" : @"sponsor_apps",
             @"keyApp" : @"key_app",
             @"userInfo" : @"user_info",
             };
}

+ (NSValueTransformer *)userInfoJSONTransformer
{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[GFSponsorsUserInfo class]];
}

+ (NSValueTransformer *)sponsorAppsJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[GFSponsorsApps class]];
}

+ (NSValueTransformer *)keyAppJSONTransformer
{
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[GFSponsorsKey_app class]];
}

@end


@implementation GFSponsorsUserInfo

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"credits" : @"credits",
             @"idfa" : @"idfa",
             @"redeem_method" : @"redeem_method",
             };
}

@end

@implementation GFSponsorsKey_app

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"app_id": @"app_id",
             @"scheme": @"scheme",
             @"app_name": @"app_name",
             @"icon_link": @"icon_link",
             @"ads_text": @"ads_text",
             @"tracking_link": @"tracking_link",
             @"redirect": @"redirect",
             @"credits": @"credits",
             };
}

@end


@implementation GFSponsorsApps

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"ads_text": @"ads_text",
             @"app_name": @"app_name",
             @"app_id": @"app_id",
             @"credits": @"credits",
             @"extra": @"extra",
             @"icon_link": @"icon_link",
             @"redirect": @"redirect",
             @"tracking_link": @"tracking_link",
             };
}

@end