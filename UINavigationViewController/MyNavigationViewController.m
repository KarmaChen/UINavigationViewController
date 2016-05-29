//
//  MyNavigationViewController.m
//  UINavigationViewController
//
//  Created by Karma on 16/5/25.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "MyNavigationViewController.h"

@interface MyNavigationViewController ()<UINavigationBarDelegate>

@end

@implementation MyNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.barTintColor=[UIColor blueColor];
    self.navigationBar.tintColor=[UIColor whiteColor];
//    self.navigationBar.barStyle=UIBarStyleBlack;
    
    //给导航栏设置图片
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"3"] forBarMetrics:UIBarMetricsDefault];
    
    self.navigationBar.delegate=self;
}
#pragma mark --delegate
- (void)navigationBar:(UINavigationBar *)navigationBar didPushItem:(UINavigationItem *)item{
    NSLog(@"%s",__func__);
}

- (void)navigationBar:(UINavigationBar *)navigationBar didPopItem:(UINavigationItem *)item{
    NSLog(@"%s",__func__);
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
