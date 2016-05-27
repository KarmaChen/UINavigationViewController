//
//  SecondViewController.m
//  UINavigationViewController
//
//  Created by Karma on 16/5/25.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor redColor];
    self.navigationController.navigationBar.barTintColor=[UIColor greenColor];
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
