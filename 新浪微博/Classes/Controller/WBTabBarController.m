//
//  WBTabBarController.m
//  新浪微博
//
//  Created by mac on 15-7-30.
//  Copyright (c) 2015年 fan. All rights reserved.
//

#import "WBTabBarController.h"
#import "WBNavigationController.h"
#import "WBHomeController.h"
#import "WBMessageController.h"
#import "WBDiscoverController.h"
#import "WBProfileController.h"

@interface WBTabBarController ()

@end

@implementation WBTabBarController





- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createViewControllerWithController:[[WBHomeController alloc]init] andTitle:@"首页" andImageName:@"tabbar_home" andHightLightImageName:@"tabbar_home_selected"];
    
    [self createViewControllerWithController:[[WBMessageController alloc]init] andTitle:@"消息" andImageName:@"tabbar_message_center" andHightLightImageName:@"tabbar_message_center_selected"];
    
    [self createViewControllerWithController:[[WBDiscoverController alloc]init] andTitle:@"发现" andImageName:@"tabbar_discover" andHightLightImageName:@"tabbar_discover_selected"];
    
    [self createViewControllerWithController:[[WBProfileController alloc]init] andTitle:@"我" andImageName:@"tabbar_profile" andHightLightImageName:@"tabbar_profile_selected"];
    
}

-(void)createViewControllerWithController:(UIViewController *)controller andTitle:(NSString *)title andImageName:(NSString *)imageName andHightLightImageName:(NSString *)hightlightImage{
    

    controller.view.backgroundColor = RandomColor;
    WBNavigationController *naviController = [[WBNavigationController alloc]initWithRootViewController:controller];
//    controller.navigationItem.title=title;
//    naviController.tabBarItem.title = title;
    //上面的两句 相当于下面的一句
    controller.title = title;
    NSMutableDictionary * mutaDict = [NSMutableDictionary  dictionary];
    [mutaDict setObject:[UIColor orangeColor] forKeyedSubscript:NSForegroundColorAttributeName];
    [naviController.tabBarItem setTitleTextAttributes:mutaDict forState:UIControlStateSelected];
    naviController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    naviController.tabBarItem.selectedImage = [[UIImage imageNamed:hightlightImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self addChildViewController:naviController];
}



@end
