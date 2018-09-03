//
//  WeixinTimelineActivity.m
//  TestActivity
//
//  Created by hhwl on 2018/9/3.
//  Copyright © 2018年 hhwl. All rights reserved.
//

#import "WeixinTimelineActivity.h"

@implementation WeixinTimelineActivity
- (id)init
{
    self = [super init];
    if (self) {
        scene = WXSceneTimeline;
    }
    return self;
}

- (UIImage *)activityImage
{
    return [[[UIDevice currentDevice] systemVersion] intValue] >= 8 ? [UIImage imageNamed:@"icon_timeline-8"] : [UIImage imageNamed:@"icon_timeline"];
}

- (NSString *)activityTitle
{
    return NSLocalizedString(@"WeChat Timeline", nil);
}

@end
