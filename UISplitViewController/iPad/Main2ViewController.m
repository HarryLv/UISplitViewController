//
//  Main2ViewController.m
//  iPad
//
//  Created by ll on 2018/8/23.
//  Copyright © 2018年 iPad. All rights reserved.
//

#import "Main2ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface Main2ViewController ()<UISplitViewControllerDelegate>

@end

@implementation Main2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];

    FirstViewController *masterVC = [[FirstViewController alloc]init];
    
    UINavigationController *masterNAV = [[UINavigationController alloc]initWithRootViewController:masterVC];
    
    SecondViewController *detailVC = [[SecondViewController alloc]init];
    
    UINavigationController *detailNAV = [[UINavigationController alloc]initWithRootViewController:detailVC];
    
    self.viewControllers = @[masterNAV,detailNAV];

    
    self.delegate = self;
    self.maximumPrimaryColumnWidth = 60;
    self.minimumPrimaryColumnWidth = 30;
    self.presentsWithGesture = YES;
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
