//
//  ViewController.m
//  NewiOSProj
//
//  Created by Mr.M on 2017/10/12.
//  Copyright © 2017年 Mr.M. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "MXPNavigationController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic, strong) UITextField *userInputTextField;
@property (nonatomic, strong) UIButton    *finishBtn;

@end

NSString *imgStr = @"IMG_0868.JPG";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIBgColor;
    //self.title = @"First Page";

    [self.view addSubview:self.userInputTextField];
    [self.view addSubview:self.finishBtn];
    [self testSandBox];
    
    //键盘出现时，点击空白处键盘消失
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    tap.delegate = self;
    
    UIImageView *testImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 210, self.view.bounds.size.width, 300)];
    testImgView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:testImgView];
    [testImgView setImage:self.getDocumentImage];
    
    
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)testSandBox {
    

    UIImage *tImg = [UIImage imageNamed:imgStr];
    NSString *path_sandox = NSHomeDirectory();
    //设置一个图片的存储路径
    NSString *targetPath = [NSString stringWithFormat:@"/Documents/%@",imgStr];
    //NSString *imagePath = [path_sandox stringByAppendingString:@"/Documents/test.png"];
    NSString *imagePath = [path_sandox stringByAppendingString:targetPath];
    //把图片直接保存到指定的路径（同时应该把图片的路径imagePath存起来，下次就可以直接用来取）
    [UIImagePNGRepresentation(tImg) writeToFile:imagePath atomically:YES];
    
}

- (UIImage *)getDocumentImage {
    // 读取沙盒路径图片
    NSString *aPath3=[NSString stringWithFormat:@"%@/Documents/%@",NSHomeDirectory(),imgStr];
    // 拿到沙盒路径图片
    UIImage *imgFromUrl3=[[UIImage alloc]initWithContentsOfFile:aPath3];
    return imgFromUrl3;
}

- (UITextField *)userInputTextField {
    if (!_userInputTextField) {
        _userInputTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
        _userInputTextField.backgroundColor = [UIColor whiteColor];
    }
    return _userInputTextField;
}

- (UIButton *)finishBtn {
    if (!_finishBtn) {
        _finishBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 500, self.view.bounds.size.width, 50)];
        [_finishBtn setTitle:@"finish" forState:UIControlStateNormal];
        [_finishBtn setTitleColor:UIThemeColor forState:UIControlStateNormal];
        _finishBtn.backgroundColor = [UIColor whiteColor];
        [_finishBtn addTarget:self action:@selector(finishClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _finishBtn;
}

- (void)dismissKeyboard {
    [self.view endEditing:YES];
}


- (void)finishClick {
    SecondViewController *second = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:second animated:YES];
    NSString *inputContent = _userInputTextField.text;
    second.str = inputContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
