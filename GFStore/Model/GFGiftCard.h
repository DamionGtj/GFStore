//
//  GFGiftCard.h
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>
#import "GFSponsorsList.h"

@interface GFGiftCard : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) GFSponsorsUserInfo *userInfo;

@property (nonatomic, copy) NSArray *gift_cards;

@end


@interface GFGiftCardItem : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *credits;              //兑换该礼品卡需要的积分数量
@property (nonatomic, copy) NSString *detail;               //该礼品卡的描述信息
@property (nonatomic, copy) NSString *gift_name;            //该礼品卡的名字
@property (nonatomic, copy) NSString *icon;                 //礼品卡图标链接，绝对路径
@property (nonatomic, copy) NSString *money;                //兑换该礼品卡可换取相应价值的礼品

@end

