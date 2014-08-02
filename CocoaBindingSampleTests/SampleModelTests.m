//
//  SampleModelTests.m
//  CocoaBindingSample
//
//  Created by m0a on 2014/08/02.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SampleModel.h"
@interface SampleModelTests : XCTestCase

@end

@implementation SampleModelTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAvg
{
    SampleModel* model = [[SampleModel alloc]init];
    model.val1=[NSNumber numberWithDouble:1.0];
    model.val2=[NSNumber numberWithDouble:2.0];
    XCTAssertTrue([model.avg_val compare:[NSNumber numberWithDouble:3.0/2.0]] == NSOrderedSame, @"平均値の確認");
}

- (void)testSum
{
    SampleModel* model = [[SampleModel alloc]init];
    model.val1=[NSNumber numberWithDouble:1.0];
    model.val2=[NSNumber numberWithDouble:2.0];
    XCTAssertTrue([model.sum_val compare:[NSNumber numberWithDouble:3.0]] == NSOrderedSame, @"集計値の確認");
}

@end
