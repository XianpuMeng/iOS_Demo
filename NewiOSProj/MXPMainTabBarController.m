//
//  MXPMainTabBarController.m
//  NewiOSProj
//
//  Created by Mr.M on 2017/10/15.
//  Copyright © 2017年 Mr.M. All rights reserved.
//

#import "MXPMainTabBarController.h"
#import "ViewController.h"
#import "MXPNavigationController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface MXPMainTabBarController ()

@end

@implementation MXPMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableArray *vcArr = [NSMutableArray array];
    
    //循环创建4个控制器
    /*
    for(int i =0; i <4; i ++) {
        //实例化视图控制器
        ViewController *vc = [[ViewController alloc]init];
        //设置视图的背景颜色
        vc.view.backgroundColor= [UIColor colorWithRed:arc4random() %10*0.1 green:arc4random() %10*0.1 blue:arc4random() %10*0.1 alpha:1];
        //设置名称
        vc.title= [NSString stringWithFormat:@"第%d个控制器",i +1];
        //实例化导航控制器并初始化
        
        MXPNavigationController *nav = [[MXPNavigationController alloc]initWithRootViewController:vc];
        //添加视图控制器到数组
        [vcArr addObject:nav];
        }
    */
    
    ViewController *firstVC = [[ViewController alloc]init];
    firstVC.title = @"First Page";
    MXPNavigationController *firstNav = [[MXPNavigationController alloc]initWithRootViewController:firstVC];
    
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    secondVC.title = @"Second Page";
    MXPNavigationController *secondNav = [[MXPNavigationController alloc]initWithRootViewController:secondVC];
    secondVC.str = @"hello!";
    secondNav.navigationBar.barTintColor = [UIColor blackColor];

    
    ThirdViewController *thirdViewController = [[ThirdViewController alloc]init];
    thirdViewController.title = @"Third Page";
    MXPNavigationController *thirdNav = [[MXPNavigationController alloc]initWithRootViewController:thirdViewController];
    
    [vcArr addObject:firstNav];
    [vcArr addObject:secondNav];
    [vcArr addObject:thirdNav];
    
    self.viewControllers = vcArr;
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
