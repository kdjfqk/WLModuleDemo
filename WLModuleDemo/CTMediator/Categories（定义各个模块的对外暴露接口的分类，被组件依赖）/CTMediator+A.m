//
//  CTMediator+A.m
//  WLModuleDemo
//
//  Created by iOS on 2019/6/28.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "CTMediator+A.h"

#define kTargetName @"A"
#define kAction_CreateHomeVC @"createHomeVC"

@implementation CTMediator (A)
- (UIViewController *)getHomeVC:(NSString *)param {
    NSDictionary *dic = @{@"msg":param};
    id vc = [self performTarget:kTargetName action:kAction_CreateHomeVC params:dic shouldCacheTarget:NO];
    if ([vc isKindOfClass:[UIViewController class]]) {
        return (UIViewController *)vc;
    }else {
        return nil;
    }
}
@end
