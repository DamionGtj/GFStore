//
//  GFSponsorsList.h
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>

@interface GFSponsorsList : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *comments;
@property (nonatomic, copy) NSArray *sponsorApps;
@property (nonatomic, copy) NSDictionary *userInfo;
@property (nonatomic, copy) NSDictionary *keyApp;

@end


@interface GFSponsorsUserInfo : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *credits;              //用户当前拥有的积分
@property (nonatomic, copy) NSString *idfa;                 //用户标识ID
@property (nonatomic, copy) NSString *redeem_method;        //兑换礼品卡的方式，now表示即时兑换，即后台返回兑换码，由用户自行充值；email表示用户需要输入邮箱地址发送给后台，由后台负责充值

@end

@interface GFSponsorsKey_app : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *app_id;
@property (nonatomic, copy) NSString *scheme;
@property (nonatomic, copy) NSString *app_name;
@property (nonatomic, copy) NSString *icon_link;
@property (nonatomic, copy) NSString *ads_text;
@property (nonatomic, copy) NSString *tracking_link;
@property (nonatomic, copy) NSString *redirect;
@property (nonatomic, copy) NSString *credits;

@end


@interface GFSponsorsApps : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *ads_text;             //应用描述信息
@property (nonatomic, copy) NSString *app_name;             //应用名字
@property (nonatomic, copy) NSString *app_id;               //【预留】，第三方提供的应用包名，唯一标识
@property (nonatomic, copy) NSString *credits;              //下载该应用可获取多少积分
@property (nonatomic, copy) NSString *extra;                //控制客户端调用tracking_link次数
@property (nonatomic, copy) NSString *icon_link;            //应用图标链接，绝对路径
@property (nonatomic, copy) NSString *redirect;             //1表示点击该应用链接之后使用外部跳走方式，0表示点击链接后使用内部app store方式打开该应用
@property (nonatomic, copy) NSString *tracking_link;        //应用链接

@end
