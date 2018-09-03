//
//  WeixinActivityBase.h
//  TestActivity
//
//  Created by hhwl on 2018/9/3.
//  Copyright © 2018年 hhwl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WXApi.h"

@interface WeixinActivityBase : UIActivity{
    NSString *title;
    UIImage *image;
    NSURL *url;
    enum WXScene scene;
}

- (void)setThumbImage:(SendMessageToWXReq *)req;

@end
