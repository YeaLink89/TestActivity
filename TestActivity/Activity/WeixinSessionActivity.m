//
//  WeixinSessionActivity.m
//  TestActivity
//
//  Created by hhwl on 2018/9/3.
//  Copyright © 2018年 hhwl. All rights reserved.
//

#import "WeixinSessionActivity.h"

@implementation WeixinSessionActivity
- (UIImage *)activityImage
{
    return [[[UIDevice currentDevice] systemVersion] intValue] >= 8 ? [UIImage imageNamed:@"icon_session-8"] : [UIImage imageNamed:@"icon_session"];
}

- (NSString *)activityTitle
{
    return NSLocalizedString(@"WeChat Session", nil);
}
@end
