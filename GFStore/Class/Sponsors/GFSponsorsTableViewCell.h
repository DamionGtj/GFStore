//
//  GFSponsorsTableViewCell.h
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GFSponsorsList.h"

@interface GFSponsorsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *headImageView;
@property (weak, nonatomic) IBOutlet UILabel *appNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *adLabel;
@property (weak, nonatomic) IBOutlet UILabel *creditLabel;

- (void)bindData:(GFSponsorsApps *)sponsorAppItem;
@end
