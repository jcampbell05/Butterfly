//
//  BFLYSessionTask.h
//  Butterfly
//
//  Created by James Campbell on 10/08/2015.
//  Copyright (c) 2015 James Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 BFLYSessionTask is a wrapper around NSURLSessionTask.
 
 @since 1.0
 */
@interface BFLYSessionTask : NSObject

#pragma mark - Creating a task

/**
 Creates and returns a new task.
 
 @note - You shouldn't need to create this object directly, instead you should
 use the methods on the `BFLYSession`.
 
 @param sessionTask - The underlying NSURLSessionTask.
 
 @return BFLYSessionTask
 
 @since 1.0
 */
- (nullable instancetype)initWithSessionTask:(nonnull NSURLSessionTask *)sessionTask NS_DESIGNATED_INITIALIZER;

@end
