//
//  UnitTests.m
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
