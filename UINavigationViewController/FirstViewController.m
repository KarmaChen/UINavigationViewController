//
//  FirstViewController.m
//  UINavigationViewController
//
//  Created by Karma on 16/5/25.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()<UINavigationBarDelegate>


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor yellowColor];
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:self action:@selector(clickLeftBtn)];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"1"] style:UIBarButtonItemStylePlain target:self action:@selector(clickRightBtn)];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    
    UIView *titleView = [[UIView alloc] initWithFrame:CGRectMake(50, 100, 100, 30)];
    titleView.backgroundColor = [UIColor greenColor];
    self.navigationItem.titleView = titleView;
    
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
-(void) clickLeftBtn{
    NSLog(@"__func__");
}
-(void) clickRightBtn{
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
