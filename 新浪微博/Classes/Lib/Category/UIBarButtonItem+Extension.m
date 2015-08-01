//
//  UIBarButtonItem+Extension.m
//  新浪微博
//
//  Created by mac on 15-7-31.
//  Copyright (c) 2015年 fan. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemWithTarget:(id)target andImage:(NSString *)imageName andHlightImageName:(NSString *)hlightImageName andAction:(SEL) action{
    UIImage *image = [[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *hlightImage = [[UIImage imageNamed:hlightImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:hlightImage forState:UIControlStateHighlighted];
    [button setFrame:CGRectMake(0,0,button.currentBackgroundImage.size.width,button.currentBackgroundImage.size.height)];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:button];
}
@end
