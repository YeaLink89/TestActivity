//
//  ViewController.m
//  TestActivity
//
//  Created by hhwl on 2018/8/30.
//  Copyright © 2018年 hhwl. All rights reserved.
//

#import "ViewController.h"
#import <Social/social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray*activity = @[[[WeixinSessionActivity alloc]init], [[WeixinTimelineActivity alloc]init]];
    UIActivityViewController*activityView = [[UIActivityViewControlleralloc]initWithActivityItems:@[@"这里是标题", [NSURLURLWithString:@"http://www.google.com"]]applicationActivities:activity];
    
    activityView.excludedActivityTypes= @[UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypePrint,UIActivityTypePostToWeibo];
    
    [selpresentViewController:activityViewanimated:YEScompletion:nil];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
