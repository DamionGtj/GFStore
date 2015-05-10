//
//  ViewController.m
//  GFStore
//
//  Created by guotianji on 15/4/16.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "ViewController.h"
#import "GFRequestAPI.h"
#import "GFSponsorsList.h"
#import "GFGiftCard.h"
#import "GFHotApps.h"

@interface ViewController ()

@property (nonatomic, strong) GFSponsorsList *sponsors;
@property (nonatomic, strong) GFGiftCard *giftCard;
@property (nonatomic, strong) GFHotApps *hotApps;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GFRequestAPI requestSponsorsListWithClassName:@"GFSponsorsList" completionBlock:^(id object, NSError *error, AFHTTPRequestOperation *operation) {
        if (object && [object isKindOfClass:[GFSponsorsList class]]) {
            self.sponsors = (GFSponsorsList *)object;
        }
    }];
    
    
    
    [GFRequestAPI requestGiftCardWithClassName:@"GFGiftCard" completionBlock:^(id object, NSError *error, AFHTTPRequestOperation *operation) {
        if (object && [object isKindOfClass:[GFGiftCard class]]) {
            self.giftCard = (GFGiftCard *)object;
        }
    }];
    
    [GFRequestAPI requestHotappsWithClassName:@"GFHotApps" completionBlock:^(id object, NSError *error, AFHTTPRequestOperation *operation) {
        if (object && [object isKindOfClass:[GFHotApps class]]) {
            self.hotApps = (GFHotApps *)object;
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
