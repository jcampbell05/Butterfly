//
//  BFLYSessionSpec.m
//  Butterfly
//
//  Created by James Campbell on 20/08/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "BFLYSession.h"

SpecBegin(Session)

describe(@"When accessing the shared session", ^
{
    BFLYSession *session = [BFLYSession sharedSession];
    
    it(@"should return the same instance", ^
    {
        BFLYSession *session2 = [BFLYSession sharedSession];
        expect(session).to.beIdenticalTo(session2);
    });
});

describe(@"When creating a new instance", ^
{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    BFLYSession *session = [[BFLYSession alloc] initWithConfiguration:configuration];
    
    it(@"set the configuration", ^
    {
        expect(session.configuration).toNot.beNil();
    });
});

describe(@"When creating a data task", ^
{
    NSURL *url = [NSURL URLWithString:@"http://www.google.co.uk"];
    NSURLRequest *request =  [NSURLRequest requestWithURL:url];
    
    it(@"return a task", ^
       {
           id task = [[BFLYSession sharedSession] dataTaskWithRequest:request];
                      expect(task).toNot.beNil();
       });
});

SpecEnd
