//
//  ViewController.m
//  WLModuleDemo
//
//  Created by iOS on 2019/6/28.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "ViewController.h"
#import "BeeHive.h"
#import "Service_A_Protocol.h"
#import "MGJRouter.h"
#import "CTMediator+A.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)CTMediatorClicked:(id)sender {
    UIViewController *vc = [[CTMediator sharedInstance] getHomeVC:@"CTMediator"];
    if (vc) {
        [self presentViewController:vc animated:YES completion:nil];
    }
}

- (IBAction)MGJRouterClicked:(id)sender {
    //1、返回结果只能是id，需要手动转换，不太好
    //2、可以传递哪些参数需要有文档说明，强l依赖文档
    id vc = [MGJRouter objectForURL:@"mgj://module_a/home?param=MGJRouter"];
    if ([vc isKindOfClass:[UIViewController class]]) {
        [self presentViewController:(UIViewController *)vc animated:YES completion:nil];
    }
}

- (IBAction)BeeHiveClicked:(id)sender {
    id<Service_A_Protocol> sa = [[BeeHive shareInstance] createService:@protocol(Service_A_Protocol)];
     UIViewController *vc = [sa getHomeVC:@"BeeHive"];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
