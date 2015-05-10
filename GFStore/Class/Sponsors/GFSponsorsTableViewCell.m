//
//  GFSponsorsTableViewCell.m
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFSponsorsTableViewCell.h"

#import <SDWebImage/UIImageView+WebCache.h>

@implementation GFSponsorsTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)bindData:(GFSponsorsApps *)sponsorAppItem {
    
    self.appNameLabel.text = sponsorAppItem.app_name;
    
    self.adLabel.text = sponsorAppItem.ads_text;
    
    self.creditLabel.text = [NSString stringWithFormat:@"+%@",sponsorAppItem.credits];
    
    [self.headImageView sd_setImageWithURL:[NSURL URLWithString:sponsorAppItem.icon_link] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
    }];
}

@end
