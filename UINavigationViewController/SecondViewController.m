//
//  SecondViewController.m
//  UINavigationViewController
//
//  Created by Karma on 16/5/25.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UINavigationBarDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor redColor];
    self.navigationController.navigationBar.barTintColor=[UIColor greenColor];
    self.navigationItem.title=@"second";
    self.navigationItem.prompt=@"welcome to my view";
    UIView *view =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, 50)];
    view.backgroundColor=[UIColor purpleColor];
    UIBarButtonItem *rightView=[[UIBarButtonItem alloc]initWithCustomView:view];
    self.navigationItem.rightBarButtonItem=rightView;
    
    self.navigationController.delegate=self;
    
}
#pragma mark -delegate
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
    
}
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSLog(@"%s",__func__);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnFirstView:(id)sender {
    //出栈
    [self.navigationController popViewControllerAnimated:YES];
}



@end
