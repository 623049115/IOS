//
//  UITest1Controller.m
//  新浪微博
//
//  Created by mac on 15-7-31.
//  Copyright (c) 2015年 fan. All rights reserved.
//

#import "WBTest1ViewController.h"
#import "WBTest2ViewController.h"

@implementation WBTest1ViewController

-(instancetype)init{

    if(self = [super initWithNibName:@"WBTest1View" bundle:nil]){
    
    }
    return self;

}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    WBTest2ViewController *test2ViewController = [[WBTest2ViewController alloc]init];
    test2ViewController.navigationItem.title = @"test2";
    [self.navigationController showViewController:test2ViewController sender:nil];
    
    NSLog(@"%s",__func__);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    NSLog(@"%s",__func__);
}

@end
