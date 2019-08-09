//
//  A_Entry.m
//  WLModuleDemo
//
//  Created by iOS on 2019/6/26.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "A_Entry.h"
#import "MGJRouter.h"
#import "MGJAHomeViewController.h"

@implementation A_Entry
+ (void)load {
    [MGJRouter registerURLPattern:@"mgj://module_a/home" toObjectHandler:^(NSDictionary *routerParameters){
        NSString *param = routerParameters[@"param"];
        MGJAHomeViewController *vc = [[MGJAHomeViewController alloc] initWithParam:param];
        return vc;
    }];
}
@end
