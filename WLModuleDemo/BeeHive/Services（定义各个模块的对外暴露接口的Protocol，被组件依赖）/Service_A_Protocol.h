//
//  Service_A_Protocol.h
//  WLModuleDemo
//
//  Created by iOS on 2019/6/28.
//  Copyright © 2019 iOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Service_A_Protocol <BHServiceProtocol>

- (UIViewController *)getHomeVC:(NSString *)param;

@end

NS_ASSUME_NONNULL_END
