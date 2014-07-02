//
//  FastCoderTests.m
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
    XCTAssertEqualObjects(outputString, inputString, @"OutputEqualsInput test failed");
}

- (void)testZeroLengthInput
{
    NSData *data = [[NSData data] gzippedData];
    XCTAssertNil(data, @"ZeroLengthInput test failed");
    
    data = [[NSData data] gunzippedData];
    XCTAssertNil(data, @"ZeroLengthInput test failed");
}

@end
