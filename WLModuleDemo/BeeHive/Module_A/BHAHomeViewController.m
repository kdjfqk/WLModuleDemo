//
//  BHAHomeViewController.m
//  WLModuleDemo
//
//  Created by iOS on 2019/6/28.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "BHAHomeViewController.h"

@interface BHAHomeViewController ()
@property (nonatomic, strong) NSString *param;
@end

@implementation BHAHomeViewController

- (instancetype)initWithParam:(NSString *)param {
    if (self = [super init]) {
        _param = param;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createSubViews];
}

- (void)createSubViews {
    CGFloat sw = [UIScreen mainScreen].bounds.size.width;
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake((sw-200)/2, 100, 200, 100)];
    lbl.text = [NSString stringWithFormat:@"parma = %@",_param];
    lbl.textColor = [UIColor blackColor];
    [self.view addSubview:lbl];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake((sw-200)/2, 200, 200, 50)];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor blueColor];
    btn.layer.cornerRadius = 5;
    btn.clipsToBounds = YES;
    [self.view addSubview:btn];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
