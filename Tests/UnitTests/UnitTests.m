//
//  UnitTests.m
//
//  Created by Nick Lockwood on 12/01/2012.
//  Copyright (c) 2012 Charcoal Design. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "GZIP.h"


@interface UnitTests : XCTestCase

@end


@implementation UnitTests

- (void)testOutputEqualsInput
{
    //set up data
    NSString *inputString = @"Hello World!";
    NSData *inputData = [inputString dataUsingEncoding:NSUTF8StringEncoding];

    //compress
    NSData *compressedData = [inputData gzippedData];

    //decode
    NSData *outputData = [compressedData gunzippedData];
    NSString *outputString = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];
    XCTAssertEqualObjects(outputString, inputString);
}

- (void)testUnzipNonZippedData
{
    //set up data
    NSString *inputString = @"Hello World!";
    NSData *inputData = [inputString dataUsingEncoding:NSUTF8StringEncoding];

    //decode
    NSData *outputData = [inputData gunzippedData];
    NSString *outputString = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];
    XCTAssertEqualObjects(outputString, inputString);
}

- (void)testRezipZippedData
{
    //set up data
    NSString *inputString = @"Hello World!";
    NSData *inputData = [inputString dataUsingEncoding:NSUTF8StringEncoding];

    //compress
    NSData *compressedData = [inputData gzippedData];
    inputString = [[NSString alloc] initWithData:compressedData encoding:NSUTF8StringEncoding];

    //compress again
    NSData *outputData = [compressedData gzippedData];
    NSString *outputString = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];
    XCTAssertEqualObjects(outputString, inputString);
}

- (void)testZeroLengthInput
{
    NSData *data = [[NSData data] gzippedData];
    XCTAssertEqual(data.length, 0);

    data = [[NSData data] gunzippedData];
    XCTAssertEqual(data.length, 0);
}

@end
