//
//  MXPNavigationController.m
//  NewiOSProj
//
//  Created by Mr.M on 2017/10/13.
//  Copyright © 2017年 Mr.M. All rights reserved.
//

#import "MXPNavigationController.h"

@interface MXPNavigationController ()

@end

@implementation MXPNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.navigationBar setTranslucent:NO];//设置navigationbar的半透明
    self.title = @"navigationcontroller";//设置navigationbar上显示的标题
    self.navigationBar.barTintColor = UIThemeColor;//设置navigationbar的颜色
    [self.navigationItem.rightBarButtonItem setTintColor:[UIColor whiteColor]];
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
}

//+ (void)initialize{
//    
//    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:self, nil];
//    //[bar setBackgroundImage:[UIImage imageNamed:@"recomend_btn_gone"] forBarMetrics:UIBarMetricsDefault];
//    [bar setBarTintColor:[UIColor greenColor]];
//    bar.translucent = NO;
//
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
