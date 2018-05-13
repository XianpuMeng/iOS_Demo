//
//  SecondViewController.m
//  NewiOSProj
//
//  Created by Mr.M on 2017/10/13.
//  Copyright © 2017年 Mr.M. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.title = @"Second Page";
    self.view.backgroundColor = UIBgColor;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(jumpToThirdPageClicked)];
    [self.navigationItem.rightBarButtonItem setTintColor:[UIColor whiteColor]];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];

    
    UIButton *aBUTTON = [[UIButton alloc]initWithFrame:CGRectMake(30, 30, 50, 30)];
    [aBUTTON setTitle:@"hi" forState:UIControlStateNormal];
    [aBUTTON setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [aBUTTON addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
    [aBUTTON setBackgroundColor:[UIColor redColor]];
    
    UILabel *fromVCLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 300)];
    fromVCLabel.backgroundColor = [UIColor whiteColor];
    fromVCLabel.text = _str;
    

    [self.view addSubview:aBUTTON];
    [self.view addSubview:fromVCLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clicked{
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    
    [self.navigationController pushViewController:thirdVC animated:YES];
    
}

- (void)jumpToThirdPageClicked{
    ThirdViewController *thirdVC = [[ThirdViewController alloc]init];
    thirdVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:thirdVC animated:YES];
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
