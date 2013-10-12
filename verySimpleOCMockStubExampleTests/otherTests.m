//
//  otherTests.m
//  verySimpleOCMockStubExample
//
//  Created by Abdullah Bakhach on 10/11/13.
//  Copyright (c) 2013 victagroup. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <OCMock/OCMock.h>
#import "DetailViewController.h"

@interface otherTests : SenTestCase

@end

@implementation otherTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void) test__stubbing_a_class_method
{
    id mockDetailViewController = [OCMockObject mockForClass:[DetailViewController class]];
    [[[mockDetailViewController stub] andReturn:@"hello"] helloWorld];
    
    STAssertEqualObjects([DetailViewController helloWorld], @"hello", nil);
}

@end
