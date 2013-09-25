//
//  DataTests.m
//
//  Created by Nick Lockwood on 12/01/2012.
//  Copyright (c) 2012 Charcoal Design. All rights reserved.
//

#import "DataTests.h"
#import "GZIP.h"


@implementation DataTests

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
    NSAssert([outputString isEqualToString:inputString], @"OutputEqualsInput test failed");
}

- (void)testZeroLengthInput
{
    NSData *data = [[NSData data] gzippedData];
    NSAssert(data == nil, @"ZeroLengthInput test failed");
    
    data = [[NSData data] gunzippedData];
    NSAssert(data == nil, @"ZeroLengthInput test failed");
}

@end
