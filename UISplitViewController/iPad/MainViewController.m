//
//  MainViewController.m
//  iPad
//
//  Created by ll on 2018/8/23.
//  Copyright © 2018年 iPad. All rights reserved.
//

/*
 UISplitViewController类是一个容器视图控制器，它显示一个master-detail界面(主界面、详细界面)。
 */

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface MainViewController ()<UISplitViewControllerDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    FirstViewController *masterVC = [[FirstViewController alloc]init];
    
    UINavigationController *masterNAV = [[UINavigationController alloc]initWithRootViewController:masterVC];
    
    SecondViewController *detailVC = [[SecondViewController alloc]init];
    
    UINavigationController *detailNAV = [[UINavigationController alloc]initWithRootViewController:detailVC];
    
    self.viewControllers = @[masterNAV,detailNAV];
    
    //设置主控制器最大宽大与最小宽度
    self.maximumPrimaryColumnWidth = 200;
    
    self.minimumPrimaryColumnWidth = 30;
    
    self.delegate = self;
    
    /*
     //
     UISplitViewControllerDisplayModeAutomatic,
     
     //次视图控制器显示在屏幕上，主视图控制器处于关闭屏幕。
     UISplitViewControllerDisplayModePrimaryHidden,
     
     //主、次视图控制器一直显示
     UISplitViewControllerDisplayModeAllVisible,
     
     //次视图控制器在屏幕上，主视图控制器分层在其上。 在此模式下，主视图控制器部分地遮挡了次视图控制器
     UISplitViewControllerDisplayModePrimaryOverlay,
     
     */
    
    self.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;
    
    //手势支持
    self.presentsWithGesture = NO;

}




// Called by the gesture AND barButtonItem to determine what they will set the display mode to (and what the displayModeButtonItem's appearance will be.) Return UISplitViewControllerDisplayModeAutomatic to get the default behavior.

//-(UISplitViewControllerDisplayMode)targetDisplayModeForActionInSplitViewController:(UISplitViewController *)svc {
//    if (self.displayMode == UISplitViewControllerDisplayModePrimaryHidden) { return UISplitViewControllerDisplayModeAllVisible; }
//    else if (self.displayMode == UISplitViewControllerDisplayModeAllVisible){ return UISplitViewControllerDisplayModePrimaryHidden; }
//    else{ //UISplitViewControllerDisplayModePrimaryOverlay
//        return UISplitViewControllerDisplayModePrimaryHidden;
//    }
//
//}

// Override this method to customize the behavior of `showDetailViewController:` on a split view controller. Return YES to indicate that you've handled the action yourself; return NO to cause the default behavior to be executed.
- (BOOL)splitViewController:(UISplitViewController *)splitViewController showDetailViewController:(UIViewController *)vc sender:(nullable id)sender NS_AVAILABLE_IOS(8_0)
{
    //调用showViewController与showDetailViewController切、换主次控制器
    //通过接收到的vc与sender控制return返回值。
    //如果设置为NO,可切换相应的vc
    return NO;
}


@end
