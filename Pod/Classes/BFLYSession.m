//
//  BFLYSession.m
//  Butterfly
//
//  Created by James Campbell on 10/08/2015.
//  Copyright (c) 2015 James Campbell. All rights reserved.
//

#import "BFLYSession.h"

#import "BFLYCollections.h"

@interface BFLYSession ()

/**
 See header.
 */
@property (nonnull, readwrite, copy) NSURLSessionConfiguration *configuration;

/**
 The underlying NSURLSession powering the session.
 
 @since 1.0
 */
@property (nonnull, strong) NSURLSession *underlyingSession;

/**
 The table containing all the currently executing tasks.
 
 @since 1.0
 */
@property (nonnull, strong) BFLYMutableDictionary(NSNumber *, BFLYSessionTask *) *taskTable;

@end

@implementation BFLYSession

#pragma mark - Creating a session

+ (nullable instancetype)sharedSession
{
    static BFLYSession *sharedSession = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
                  {
                      sharedSession = [[BFLYSession alloc] init];
                  });
    
    return sharedSession;
}

- (nullable instancetype)init
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    self = [self initWithConfiguration:configuration];
    
    if (self)
    {
        
    }
    
    return self;
}

- (nullable instancetype)initWithConfiguration:(nonnull NSURLSessionConfiguration *)configuration
{
    self = [super init];
    
    if (self)
    {
        NSAssert(configuration, @"A NSURLSession configuration must be provided when creating a BFLYSession");
        
        self.configuration = configuration;
        self.underlyingSession = [NSURLSession sessionWithConfiguration:self.configuration];
    }
    
    return self;
}

#pragma mark - Tasks

- (nullable BFLYSessionTask *)dataTaskWithRequest:(nonnull NSURLRequest *)request
{
    NSAssert(request, @"A Request must be provided when creating a BFLYDataSessionTask");
    
    NSURLSessionTask *underlyingTask = [self.underlyingSession dataTaskWithRequest:request];
    BFLYSessionTask *task = [[BFLYSessionTask alloc] initWithSessionTask:underlyingTask];
    
    self.taskTable[@(underlyingTask.taskIdentifier)] = task;
    
    return task;
}

@end
