//
//  SYZFirstViewController.m
//  SYZNavigationControllerKit_Example
//
//  Created by LeeRay on 2019/3/5.
//  Copyright © 2019年 sun. All rights reserved.
//

#import "SYZFirstViewController.h"
#import <SYZNavigationControllerKit/SYZNavigationControllerKit.h>
#import "SYZSecordViewController.h"
@interface SYZFirstViewController ()

@end

@implementation SYZFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //隐藏状态栏
    self.syz_prefersNavigationBarHidden = YES;
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(buttonaction:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(0, 100, 100, 100);
    [self.view addSubview:btn];

}

- (void)buttonaction:(id)sender{
    [self.navigationController pushViewController:[SYZSecordViewController new] animated:YES];
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
