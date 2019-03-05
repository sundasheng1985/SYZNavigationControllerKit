//
//  SYZRootViewController.m
//  SYZNavigationControllerKit_Example
//
//  Created by LeeRay on 2019/3/5.
//  Copyright © 2019年 sun. All rights reserved.
//

#import "SYZRootViewController.h"
#import "SYZFirstViewController.h"
@interface SYZRootViewController ()

@end

@implementation SYZRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"有bar";
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(buttonaction:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(0, 100, 100, 100);
    [self.view addSubview:btn];
}

- (void)buttonaction:(id)sender{
    [self.navigationController pushViewController:[SYZFirstViewController new] animated:YES];
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
