//
//  OCMockSampleTest.m
//  GHUnitProject
//
//  Created by gongyong on 14-4-15.
//  Copyright (c) 2014年 gongyong. All rights reserved.
//

#import "OCMockSampleTest.h"

#import <OCMock/OCMock.h>

@implementation OCMockSampleTest

// simple test to ensure building, linking,

// and running test case works in the project

- (void)testOCMockPass

{
    
    id mock = [OCMockObject mockForClass:NSString.class];
    
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    
    GHAssertEqualObjects(@"mocktest", returnValue,
                         
                         @"Should have returned the expected string.");
    
}

- (void)testOCMockFail

{
    
    id mock = [OCMockObject mockForClass:NSString.class];
    
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    
    GHAssertEqualObjects(@"thisIsTheWrongValueToCheck",
                         
    returnValue, @"Should have returned the expected string.");
    
}

@end
