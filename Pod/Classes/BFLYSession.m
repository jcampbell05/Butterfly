//
//  BFLYSession.m
//  Butterfly
//
//  Created by James Campbell on 10/08/2015.
//  Copyright (c) 2015 James Campbell. All rights reserved.
//

#import "BFLYSession.h"

@interface BFLYSession ()

/**
 See header.
 */
@property (nonnull, readwrite, copy) NSURLSessionConfiguration *configuration;

/**
 The underlying NSURLSession powering the Session.
 
 @since 1.0
 */
@property (nonnull, strong) NSURLSession *session;

@end

@implementation BFLYSession

#pragma mark - Creating a Session

+ (nullable instancetype)sharedSession
{
    static BFLYSession *sharedSession = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^
    {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        sharedSession = [[BFLYSession alloc] initWithConfiguration:configuration];
    });
    
    return sharedSession;
}

- (nullable instancetype)initWithConfiguration:(nonnull NSURLSessionConfiguration *)configuration
{
    self = [super init];
    
    if (self)
    {
        NSAssert(configuration, @"A NSURLSession configuration must be provided");
        
        self.configuration = configuration;
        self.session = [NSURLSession sessionWithConfiguration:self.configuration];
    }
    
    return self;
}

#pragma mark - Tasks

- (nullable id)dataTaskWithRequest:(nonnull NSURLRequest *)request
{
    return [self.session dataTaskWithRequest:request];
}

@end
