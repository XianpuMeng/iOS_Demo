//
//  ThirdViewController.m
//  NewiOSProj
//
//  Created by Mr.M on 2017/10/13.
//  Copyright © 2017年 Mr.M. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *detailTableView;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blackColor];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    [self.view addSubview:self.detailTableView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource,UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 5;
    } else {
        return 2;
    }
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    return 20;
//}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 20;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        ///用系统默认的cell样式
        UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell.textLabel.text = @"1";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        cell.textLabel.text = @"2";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}

#pragma mark - getters

- (UITableView *)detailTableView{
    if (!_detailTableView) {
        _detailTableView  = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, UIScreenWidth, self.view.bounds.size.height) style:UITableViewStyleGrouped];
        _detailTableView.delegate = self;
        _detailTableView.dataSource = self;
        //_detailTableView.backgroundColor = [UIColor whiteColor];
        
    }
    return _detailTableView;
}

@end
