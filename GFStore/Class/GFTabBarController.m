//
//  GFTabBarController.m
//  GFStore
//
//  Created by guotianji on 15/5/10.
//  Copyright (c) 2015年 gtj. All rights reserved.
//

#import "GFTabBarController.h"
#import "UIImage+Utility.h"

@interface GFTabBarController ()

@end

@implementation GFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ad-reward-img-logo"]];
    imageView.frame = CGRectMake(0, 0, 154, 23);
    UIView *view = [[UIView alloc]initWithFrame:CGRectZero];
    view.frame = imageView.frame;
    [view addSubview:imageView];
    self.navigationItem.titleView = view;
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:RGBCOLOR(90, 110, 135)] forBarMetrics:UIBarMetricsDefault];
    
    for (UITabBarItem* item in self.tabBar.items)
    {
        switch (item.tag) {
            case 0:
            {
                item.image = [[UIImage imageNamed:@"ad-reward-btn-sponsors"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                item.selectedImage = [[UIImage imageNamed:@"ad-reward-btn-sponsors-hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            }
                break;
            case 1:
            {
                item.image = [[UIImage imageNamed:@"ad-reward-btn-gifts"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                item.selectedImage = [[UIImage imageNamed:@"ad-reward-btn-gifts-hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            }
                break;
            case 2:
            {
                item.image = [[UIImage imageNamed:@"ad-reward-btn-hot"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                item.selectedImage = [[UIImage imageNamed:@"ad-reward-btn-hot-hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            }
                break;
            case 3:
            {
                item.image = [[UIImage imageNamed:@"ad-reward-btn-about"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
                item.selectedImage = [[UIImage imageNamed:@"ad-reward-btn-about-hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            }
                break;
                
            default:
                break;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
