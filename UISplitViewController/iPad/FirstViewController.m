//
//  FirstViewController.m
//  iPad
//
//  Created by ll on 2018/8/23.
//  Copyright © 2018年 iPad. All rights reserved.
//

#import "FirstViewController.h"
#import "ThridViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

@property (strong, nonatomic) SecondViewController *secondVC;

@property (strong, nonatomic) ThridViewController *thridVC;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
//    self.tableView.frame = CGRectMake(0, 0, 100, self.view.frame.size.height);
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    
//    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
//
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(handleDeviceOrientationDidChange:)
//                                                 name:UIDeviceOrientationDidChangeNotification
//                                               object:nil
//     ];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    if (size.width > size.height){
//     横屏 // 横屏布局 balabala
    
    } else { // 竖屏布局 balabala
        
    }
    
}
    
    
   

//- (void)handleDeviceOrientationDidChange:(UIInterfaceOrientation)interfaceOrientation{
//    UIDevice *device = [UIDevice currentDevice] ;
//    
//    switch (device.orientation) {
//        case UIDeviceOrientationFaceUp:
//            NSLog(@"屏幕朝上平躺");
//            break;
//            
//        case UIDeviceOrientationFaceDown:
//            NSLog(@"屏幕朝下平躺");
//            break;
//            
//        case UIDeviceOrientationUnknown:
//            NSLog(@"未知方向");
//            break;
//            
//        case UIDeviceOrientationLandscapeLeft:
//            NSLog(@"home键在右");
//            
//            break;
//    }
//}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.tableView.frame = self.view.frame;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row%2) {
        if (!self.thridVC) {
            ThridViewController *detailVC = [[ThridViewController alloc]init];
            detailVC.modalTransitionStyle  = UIModalTransitionStyleFlipHorizontal;
        
            self.thridVC = detailVC;
        }
            //切换次控制器
//            id sender = [self targetForAction:@selector(showDetailViewController:sender:) withSender:nil];
 
        UINavigationController *detailNAV = [[UINavigationController alloc]initWithRootViewController:self.thridVC];
        
        self.thridVC.number = indexPath.row;
    
        [self showDetailViewController:detailNAV sender:nil];
        
    }else
    {
        if(!self.secondVC ){
            SecondViewController *detailVC = [[SecondViewController alloc]init];
            detailVC.modalTransitionStyle  = UIModalTransitionStyleFlipHorizontal;
            self.secondVC = detailVC;
        }
        
        UINavigationController *detailNAV = [[UINavigationController alloc]initWithRootViewController:self.secondVC];
        
        self.secondVC.number = indexPath.row;
        
        [self showDetailViewController:detailNAV sender:nil];

       
    }
    
}

@end
