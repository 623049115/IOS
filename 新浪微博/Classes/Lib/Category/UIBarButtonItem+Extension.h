//
//  UIBarButtonItem+Extension.h
//  新浪微博
//
//  Created by mac on 15-7-31.
//  Copyright (c) 2015年 fan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemWithTarget:(id)target andImage:(NSString *)imageName andHlightImageName:(NSString *)hlightImageName andAction:(SEL) action;

@end
