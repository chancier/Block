//
//  BlockeObj.m
//  BlockMemoryMange
//
//  Created by chen on 14-11-26.
//  Copyright (c) 2014年 chen. All rights reserved.
//

#import "BlockeObj.h"

@implementation BlockeObj

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        
    }
    return self;
}

-(BlockeObj*)initBlock:(someBlock)block
{
    return [self init];
}


-(void)action
{
    NSLog(@"testAction");
}

@end
