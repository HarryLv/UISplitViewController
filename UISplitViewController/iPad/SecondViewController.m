//
//  SecondViewController.m
//  iPad
//
//  Created by ll on 2018/8/23.
//  Copyright © 2018年 iPad. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (strong, nonatomic) UILabel *numberLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    self.numberLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.numberLabel.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:self.numberLabel];

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.numberLabel.text = [NSString stringWithFormat:@"%ld", self.number];
    
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
