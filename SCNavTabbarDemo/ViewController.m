//
//  ViewController.m
//  SCNavTabbarDemo
//
//  Created by ShiCang on 14/11/17.
//  Copyright (c) 2014年 SCNavTabbarDemo. All rights reserved.
//

#import "ViewController.h"
#import "SCNavTabBarController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIViewController *oneViewController = [[UIViewController alloc] init];
    oneViewController.title = @"孙雷钢";
    oneViewController.view.backgroundColor = [UIColor brownColor];
    
    UIViewController *twoViewController = [[UIViewController alloc] init];
    twoViewController.title = @"体育";
    twoViewController.view.backgroundColor = [UIColor purpleColor];
    
    UIViewController *threeViewController = [[UIViewController alloc] init];
    threeViewController.title = @"新闻";
    threeViewController.view.backgroundColor = [UIColor orangeColor];
    
    UIViewController *fourViewController = [[UIViewController alloc] init];
    fourViewController.title = @"娱乐";
    fourViewController.view.backgroundColor = [UIColor magentaColor];
    
    UIViewController *fiveViewController = [[UIViewController alloc] init];
    fiveViewController.title = @"音乐";
    fiveViewController.view.backgroundColor = [UIColor yellowColor];
    
    UIViewController *sixViewController = [[UIViewController alloc] init];
    sixViewController.title = @"视频";
    sixViewController.view.backgroundColor = [UIColor cyanColor];
    
    UIViewController *eightViewController = [[UIViewController alloc] init];
    eightViewController.title = @"媒体";
    eightViewController.view.backgroundColor = [UIColor greenColor];
    
    UIViewController *ninghtViewController = [[UIViewController alloc] init];
    ninghtViewController.title = @"科技";
    ninghtViewController.view.backgroundColor = [UIColor redColor];
    
    SCNavTabBarController *navTabBarController = [[SCNavTabBarController alloc] init];
    navTabBarController.subViewControllers = @[oneViewController, twoViewController, threeViewController, fourViewController, fiveViewController, sixViewController, eightViewController, ninghtViewController];
    navTabBarController.showArrowButton = YES;
    [navTabBarController addParentController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


