//
//  WBNavigationController.m
//  新浪微博
//
//  Created by mac on 15-7-30.
//  Copyright (c) 2015年 fan. All rights reserved.
//

#import "WBNavigationController.h"

@interface WBNavigationController ()

@end




@implementation WBNavigationController

//设置导航的主题
+(void)initialize{
    
    //设置项目中所有 barbuttonitem 的样式
    UIBarButtonItem *barItem = [UIBarButtonItem appearance];//设置全局的
    
    //普通状态下的属性
    NSMutableDictionary *attributeNormal = [NSMutableDictionary dictionary];
    [attributeNormal setObject:[UIColor lightGrayColor] forKey:NSForegroundColorAttributeName];
    [attributeNormal setObject:[UIFont systemFontOfSize:15] forKey:NSFontAttributeName];
    
    //高亮下的属性
    NSMutableDictionary *attributeHightlight = [NSMutableDictionary dictionary];
    [attributeHightlight setObject:[UIColor orangeColor] forKey:NSForegroundColorAttributeName];
    [attributeHightlight setObject:[UIFont systemFontOfSize:15] forKey:NSFontAttributeName];
    
    [barItem setTitleTextAttributes:attributeNormal forState:UIControlStateNormal];
    [barItem setTitleTextAttributes: attributeHightlight forState:UIControlStateHighlighted];
    
}





-(void)showViewController:(UIViewController *)vc sender:(id)sender{

    [super showViewController:vc sender:sender];
    //隐藏tabBar
    self.tabBarController.tabBar.hidden = YES;
    vc.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self andImage:@"navigationbar_back" andHlightImageName:@"navigationbar_back_highlighted" andAction:@selector(back)];
}
-(UIViewController *)popViewControllerAnimated:(BOOL)animated{

    //显示tabBar
    if(self.childViewControllers.count == 2){
        self.tabBarController.tabBar.hidden = NO;
        
    }
    return [super popViewControllerAnimated:YES];
    

}

-(void)back{

    [self popViewControllerAnimated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
