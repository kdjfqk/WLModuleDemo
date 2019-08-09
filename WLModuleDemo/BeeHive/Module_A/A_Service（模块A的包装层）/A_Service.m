//
//  A_Service.m
//  WLModuleDemo
//
//  Created by iOS on 2019/6/28.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "A_Service.h"
#import "BeeHive.h"
#import "BeeHiveServices.h"
#import "BHAHomeViewController.h"


@interface A_Service() <Service_A_Protocol>

@end

@implementation A_Service

+ (void)load {
    [[BeeHive shareInstance] registerService:@protocol(Service_A_Protocol) service:[self class]];
}

- (UIViewController *)getHomeVC:(NSString *)param {
    return [[BHAHomeViewController alloc] initWithParam:param];;
}

@end
