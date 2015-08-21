//
//  BFLYSessionTaskSpec.m
//  Butterfly
//
//  Created by James Campbell on 21/08/2015.
//  Copyright (c) 2015 James Campbell. All rights reserved.
//

#import "BFLYSessionTask.h"

SpecBegin(SessionTask)

describe(@"When creating a task", ^
{
    BFLYSessionTask *task = [[BFLYSessionTask alloc] initWithSessionTask:nil];
    
    it(@"should return an instance", ^
    {
        expect(task).toNot.beNil();
    });
});

SpecEnd
