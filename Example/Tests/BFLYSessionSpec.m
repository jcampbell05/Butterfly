//
//  BFLYSessionSpec.m
//  Butterfly
//
//  Created by James Campbell on 20/08/2015.
//  Copyright © 2015 James Campbell. All rights reserved.
//

#import "BFLYSession.h"

SpecBegin(Session)

describe(@"shared session", ^
{
    BFLYSession *session = [BFLYSession sharedSession];
    
    it(@"should return an instance", ^
    {
        expect(session).toNot.beNil();
    });
    
    it(@"should return the same instance", ^
    {
        BFLYSession *session2 = [BFLYSession sharedSession];
        expect(session).to.beIdenticalTo(session2);
    });
});

SpecEnd
