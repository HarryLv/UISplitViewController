//
//  AppDelegate.m
//  iPad
//
//  Created by ll on 2018/8/23.
//  Copyright © 2018年 iPad. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "Main1ViewController.h"
#import "Main2ViewController.h"



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    MainViewController *splitVC = [[MainViewController alloc]init];
    
    Main1ViewController *splitVC1 = [[Main1ViewController alloc]init];
    
    Main2ViewController *splitVC2 = [[Main2ViewController alloc]init];
    
    splitVC.tabBarItem = [splitVC.tabBarItem initWithTitle:@"1" image:nil tag:1];
    splitVC1.tabBarItem = [splitVC1.tabBarItem initWithTitle:@"2" image:nil tag:2];
    splitVC2.tabBarItem = [splitVC2.tabBarItem initWithTitle:@"3" image:nil tag:3];
    
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    
    self.window.rootViewController = tabBarController;
    
    tabBarController.viewControllers = @[splitVC, splitVC1, splitVC2];

    self.window.rootViewController = tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    return YES;
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)nowWindow {
    
    return UIInterfaceOrientationMaskLandscapeLeft|UIInterfaceOrientationMaskLandscapeRight;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}




@end
