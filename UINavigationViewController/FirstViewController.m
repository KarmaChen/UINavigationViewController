//
//  FirstViewController.m
//  UINavigationViewController
//
//  Created by Karma on 16/5/25.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor yellowColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"点我" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftBtn)];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
}
-(void) clickLeftBtn{
    NSLog(@"__func__");
}
- (IBAction)changeView:(id)sender {
    //使用UIStoryBoard创建
    UIStoryboard * storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *secondVC=[storyBoard instantiateViewControllerWithIdentifier:@"SecondViewController"];
//    SecondViewController *secondVC = [[SecondViewController alloc]init];
    /*
     每个ViewController 里面都有一个navigationController
     动画的样式
     */
    
    //入栈
    [self.navigationController pushViewController:secondVC animated:YES];
    
}



@end
