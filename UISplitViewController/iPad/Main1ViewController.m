//
//  Main1ViewController.m
//  iPad
//
//  Created by ll on 2018/8/23.
//  Copyright © 2018年 iPad. All rights reserved.
//

#import "Main1ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThridViewController.h"

@interface Main1ViewController ()<UISplitViewControllerDelegate>

@end

@implementation Main1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];

    FirstViewController *masterVC = [[FirstViewController alloc]init];
    
    UINavigationController *masterNAV = [[UINavigationController alloc]initWithRootViewController:masterVC];
    
    SecondViewController *detailVC = [[SecondViewController alloc]init];
    
    UINavigationController *detailNAV = [[UINavigationController alloc]initWithRootViewController:detailVC];
    
    self.viewControllers = @[masterNAV,detailNAV];

    //    self.preferredPrimaryColumnWidthFraction = 100;
    self.maximumPrimaryColumnWidth = 40;
    self.minimumPrimaryColumnWidth = 30;
    
    self.delegate = self;


    self.preferredDisplayMode = UISplitViewControllerDisplayModePrimaryHidden;
    
    self.presentsWithGesture = NO;
    
}


@end
