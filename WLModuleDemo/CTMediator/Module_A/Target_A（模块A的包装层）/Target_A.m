//
//  Target_A.m
//  WLModuleDemo
//
//  Created by iOS on 2019/6/28.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "Target_A.h"
#import "CTMAHomeViewController.h"

@implementation Target_A
- (UIViewController *)Action_createHomeVC:(NSDictionary *)params {
    NSString *param = params[@"msg"];
    CTMAHomeViewController *vc = [[CTMAHomeViewController alloc] initWithParam:param];
    return vc;
}
@end
