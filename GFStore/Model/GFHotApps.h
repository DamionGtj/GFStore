//
//  GFHotApps.h
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>
#import "GFSponsorsList.h"

@interface GFHotApps : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) GFSponsorsUserInfo *userInfo;

@property (nonatomic, copy) NSArray *hot_apps;

@end



@interface GFHotAppItem : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *ads_text;             //应用描述信息
@property (nonatomic, copy) NSString *app_id;               //应用包名，唯一标识
@property (nonatomic, copy) NSString *app_name;             //应用名称
@property (nonatomic, copy) NSString *icon_link;            //应用图标链接，绝对路径
@property (nonatomic, copy) NSString *tracking_link;        //应用链接
@property (nonatomic, copy) NSString *click_time;           //控制客户端调用tracking_link次数

@end

