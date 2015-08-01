//
//  WBSearchController.m
//  新浪微博
//
//  Created by mac on 15-7-30.
//  Copyright (c) 2015年 fan. All rights reserved.
//

#import "WBMessageController.h"

#import "WBTest3ViewController.h"

@interface WBMessageController ()

@end

@implementation WBMessageController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellIdentifier = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.textLabel.text =@"测试数据";
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    WBTest3ViewController *test3ViewController = [[WBTest3ViewController alloc]init];
    test3ViewController.navigationItem.title = @"test3";
    test3ViewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"设置" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    
    // 测试 覆盖  barbuttonitem 设置的全局主题色
    NSMutableDictionary * attributeDict = [NSMutableDictionary dictionary];
    [attributeDict setObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];

    
    [test3ViewController.navigationItem.rightBarButtonItem setTitleTextAttributes:attributeDict forState:UIControlStateNormal];
    [self showViewController:test3ViewController sender:nil];
    
    
}


@end
