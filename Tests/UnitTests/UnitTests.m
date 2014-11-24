//
//  FastCoderTests.m
//
//  Created by Nick Lockwood on 12/01/2012.
//  Copyright (c) 2012 Charcoal Design. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "GZIP.h"

#include <stdlib.h>

static NSData* createRandomNSData()
{
    NSUInteger size = 10*1024*1024;
    NSUInteger chunkLenght = 4;
    NSMutableData *data = [NSMutableData dataWithCapacity:size];
    for (NSUInteger index = 0; index < size/chunkLenght; index++ ) {
        u_int32_t randomBits = arc4random();
        [data appendBytes:(void*)&randomBits length:chunkLenght];
    }
    return data;
}

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

- (void)testCompressionPerformance
{
    NSData *inputData = createRandomNSData();
    [self measureBlock:^{
        __unused NSData *compressedData = [inputData gzippedData];
    }];
}

- (void)testDecompressionPerformance
{
    NSData *inputData = createRandomNSData();
    NSData *compressedData = [inputData gzippedData];
    [self measureBlock:^{
        __unused NSData *outputData = [compressedData gunzippedData];
    }];
}

@end
