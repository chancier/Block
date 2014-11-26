//
//  BlockeObj.h
//  BlockMemoryMange
//
//  Created by chen on 14-11-26.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^someBlock)(void);

@interface BlockeObj : NSObject

- (BlockeObj*)initBlock:(someBlock)block;
- (void)action;

@end
