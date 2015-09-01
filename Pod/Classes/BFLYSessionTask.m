//
//  BFLYSessionTask.m
//  Butterfly
//
//  Created by James Campbell on 10/08/2015.
//  Copyright (c) 2015 James Campbell. All rights reserved.
//

#import "BFLYSessionTask.h"

@interface BFLYSessionTask ()

/**
 The underlying NSURLSessionTask powering the task.
 
 @since 1.0
 */
@property (nonatomic, strong) NSURLSessionTask *underlyingSessionTask;

@end

@implementation BFLYSessionTask

#pragma mark - Creating a task

- (nullable instancetype)initWithSessionTask:(nonnull NSURLSessionTask *)sessionTask
{
    self = [super init];
    
    if (self)
    {
        NSAssert(sessionTask, @"A NSURLSessionTask must be provided when creating a BFLYSessionTask");
        
        self.underlyingSessionTask = sessionTask;
    }
    
    return self;
}

@end
