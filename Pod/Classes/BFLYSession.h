//
//  BFLYSession.h
//  Butterfly
//
//  Created by James Campbell on 10/08/2015.
//  Copyright (c) 2015 James Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 This is the Butterfly Wrapper Class for NSURLSession.
 
 @since 1.0
 */
@interface BFLYSession : NSObject

/**
 This is the NSURLSessionConfiguration used to configure the session.
 
 @since 1.0
 */
@property (nonnull, readonly, copy) NSURLSessionConfiguration *configuration;

#pragma mark - Creating a Session

/**
 The shared session uses the currently set global NSURLCache,
 NSHTTPCookieStorage and NSURLCredentialStorage objects.
 
 @return BFLYSession
 
 @since 1.0
 */
+ (nullable instancetype)sharedSession;

/**
 This creates a new session with a session configuration.
 
 @param configuration - The session configuration to use for the session.
 
 @return BFLYSession
 
 @since 1.0
 */
- (nullable instancetype)initWithConfiguration:(nonnull NSURLSessionConfiguration *)configuration NS_DESIGNATED_INITIALIZER;

#pragma mark - Tasks

/**
 This creates a new data task with a request.
 
 @param request - Request to use for the task.
 
 @return BFLYDataSessionTask
 
 @since 1.0
 */
- (nullable id)dataTaskWithRequest:(nonnull NSURLRequest *)request;

@end
