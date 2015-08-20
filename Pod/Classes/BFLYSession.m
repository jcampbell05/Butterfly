//
//  BFLYSession.m
//  Butterfly
//
//  Created by James Campbell on 10/08/2015.
//  Copyright (c) 2015 James Campbell. All rights reserved.
//

#import "BFLYSession.h"

@implementation BFLYSession

+ (instancetype)sharedSession
{
    static BFLYSession *sharedSession = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
    {
        sharedSession = [[BFLYSession alloc] init];
    });
    
    return sharedSession;
}

@end
