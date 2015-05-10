//
//  GFSponsorsTableViewController.m
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFSponsorsTableViewController.h"
#import "GFSponsorsList.h"
#import "GFRequestAPI.h"
#import "GFSponsorsTableViewCell.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface GFSponsorsTableViewController ()

@property (nonatomic, strong) GFSponsorsList *sponsors;

@end

@implementation GFSponsorsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [GFRequestAPI requestSponsorsListWithClassName:@"GFSponsorsList" completionBlock:^(id object, NSError *error, AFHTTPRequestOperation *operation) {
        if (object && [object isKindOfClass:[GFSponsorsList class]]) {
            self.sponsors = (GFSponsorsList *)object;
            
            _tipLabel.text = self.sponsors.comments;
            
            [self.tableView reloadData];
        }
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.sponsors.sponsorApps.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GFSponsorsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFSponsorsTableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    GFSponsorsApps *sponsorAppItem = self.sponsors.sponsorApps[indexPath.row];
    
    [cell bindData:sponsorAppItem];
    
    return cell;
}




@end
