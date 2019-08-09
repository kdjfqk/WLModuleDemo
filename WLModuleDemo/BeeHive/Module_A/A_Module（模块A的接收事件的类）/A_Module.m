//
//  A_Module.m
//  WLModuleDemo
//
//  Created by iOS on 2019/6/28.
//  Copyright © 2019 iOS. All rights reserved.
//

#import "A_Module.h"
#import "BeeHive.h"

@interface A_Module()<BHModuleProtocol>

@end

@implementation A_Module

+ (void)load {
    [BeeHive registerDynamicModule:[self class]];
}

- (void)modSetUp:(BHContext *)context {
    NSLog(@"Module A recive modSetUp event!");
}

- (void)modInit:(BHContext *)context {
    NSLog(@"Module A recive modInit event!");
}

@end
