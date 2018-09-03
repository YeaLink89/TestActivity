//
//  ViewController.m
//  TestActivity
//
//  Created by hhwl on 2018/8/30.
//  Copyright © 2018年 hhwl. All rights reserved.
//

#import "ViewController.h"
#import "WeixinActivity.h"

@interface ViewController ()
{
    NSArray *activity;
}

@end

@implementation ViewController

- (void)actionShare
{
    UIImage *image = [UIImage imageNamed:@"Oauth.jpg"];
    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:@[@"这里是标题", image, [NSURL URLWithString:@"http://www.baidu.com"]] applicationActivities:activity];
    activityView.excludedActivityTypes = @[UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypePrint];
    [self presentViewController:activityView animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    activity = @[[[WeixinSessionActivity alloc] init], [[WeixinTimelineActivity alloc] init]];
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [shareButton setFrame:CGRectMake(150, 300, 90, 48)];
    [shareButton setTitle:@"微信分享" forState:UIControlStateNormal];
    [shareButton addTarget:self action:@selector(actionShare) forControlEvents:UIControlEventTouchUpInside];
    [shareButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:shareButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
