//
//  UnitTests.m
//
//  Created by Nick Lockwood on 12/01/2012.
//  Copyright (c) 2012 Charcoal Design. All rights reserved.
//


#import <XCTest/XCTest.h>
#import "GZIP.h"
#import "NSData+SEGGZIP.h"

NSString *longInputString = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu consequat ac felis donec et odio. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Vitae turpis massa sed elementum tempus egestas. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec. Consectetur lorem donec massa sapien faucibus et. Id interdum velit laoreet id donec ultrices tincidunt arcu non. In dictum non consectetur a. Nisl pretium fusce id velit ut tortor. Purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus. Eget sit amet tellus cras adipiscing. Duis tristique sollicitudin nibh sit amet. Faucibus in ornare quam viverra orci sagittis eu. Enim nulla aliquet porttitor lacus luctus. Enim eu turpis egestas pretium. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam. Eget duis at tellus at urna condimentum mattis pellentesque id. Sit amet consectetur adipiscing elit. Vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere.\
\
Ullamcorper velit sed ullamcorper morbi. Lobortis feugiat vivamus at augue eget arcu dictum. Aenean et tortor at risus viverra adipiscing at in tellus. Quis vel eros donec ac. Turpis in eu mi bibendum. Et odio pellentesque diam volutpat commodo. Volutpat blandit aliquam etiam erat. Sagittis id consectetur purus ut faucibus pulvinar elementum integer enim. Leo integer malesuada nunc vel. Vestibulum mattis ullamcorper velit sed. Eget sit amet tellus cras adipiscing enim eu turpis. Vitae et leo duis ut diam quam nulla porttitor. Enim sed faucibus turpis in eu mi bibendum neque. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing. Et pharetra pharetra massa massa. Massa sed elementum tempus egestas sed sed risus pretium quam. Et malesuada fames ac turpis egestas integer. A condimentum vitae sapien pellentesque habitant morbi tristique senectus et. Amet aliquam id diam maecenas.\
\
Tristique magna sit amet purus. Tellus at urna condimentum mattis pellentesque id. Aliquet lectus proin nibh nisl. Lobortis elementum nibh tellus molestie nunc non blandit. Lectus mauris ultrices eros in cursus turpis massa tincidunt dui. Nibh ipsum consequat nisl vel pretium lectus. Sed nisi lacus sed viverra tellus in. Morbi leo urna molestie at elementum eu facilisis sed odio. Nunc sed augue lacus viverra vitae congue eu consequat. Gravida neque convallis a cras semper auctor neque. Commodo odio aenean sed adipiscing diam donec. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam.\
\
Ornare suspendisse sed nisi lacus sed viverra. Sed sed risus pretium quam vulputate. Vestibulum morbi blandit cursus risus at ultrices mi tempus. Dignissim convallis aenean et tortor. Massa sapien faucibus et molestie ac feugiat sed lectus. Etiam non quam lacus suspendisse faucibus interdum posuere. Vel quam elementum pulvinar etiam non. Tincidunt vitae semper quis lectus nulla. Scelerisque purus semper eget duis at tellus at urna condimentum. Malesuada fames ac turpis egestas sed tempus urna. Posuere urna nec tincidunt praesent. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi.\
\
Tellus id interdum velit laoreet id donec ultrices. Risus in hendrerit gravida rutrum quisque. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque in. Sagittis orci a scelerisque purus semper eget duis at tellus. Consectetur a erat nam at lectus. Vel eros donec ac odio tempor orci dapibus. Non odio euismod lacinia at. Phasellus egestas tellus rutrum tellus pellentesque eu. Aliquet sagittis id consectetur purus. Diam volutpat commodo sed egestas egestas. Lacinia at quis risus sed vulputate. Purus sit amet volutpat consequat mauris nunc congue. Viverra nam libero justo laoreet sit amet cursus. Facilisis leo vel fringilla est ullamcorper eget.";

NSString *longLongInputString = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mi in nulla posuere sollicitudin aliquam ultrices sagittis. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim. In ornare quam viverra orci sagittis eu volutpat odio facilisis. Volutpat diam ut venenatis tellus in metus vulputate. Adipiscing enim eu turpis egestas pretium. Augue eget arcu dictum varius duis at consectetur. Sagittis id consectetur purus ut faucibus pulvinar elementum integer enim. Sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus. Imperdiet proin fermentum leo vel orci porta. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est velit. Vestibulum lorem sed risus ultricies tristique nulla. Vel eros donec ac odio tempor orci dapibus. Morbi leo urna molestie at elementum eu facilisis sed. Magna eget est lorem ipsum dolor sit amet consectetur.\
\
A arcu cursus vitae congue mauris rhoncus aenean. Libero nunc consequat interdum varius sit. Amet consectetur adipiscing elit duis. Integer malesuada nunc vel risus commodo. Quis varius quam quisque id diam vel quam elementum. Sagittis purus sit amet volutpat consequat mauris. Sed nisi lacus sed viverra. Ultrices neque ornare aenean euismod elementum nisi quis. Tincidunt lobortis feugiat vivamus at. Facilisi etiam dignissim diam quis enim lobortis scelerisque fermentum. Elementum facilisis leo vel fringilla est.\
\
Porttitor lacus luctus accumsan tortor posuere ac ut consequat semper. Nibh ipsum consequat nisl vel pretium lectus quam id. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Posuere ac ut consequat semper viverra. Id porta nibh venenatis cras. Ultrices vitae auctor eu augue ut lectus arcu. Tempor nec feugiat nisl pretium fusce id velit. Sem integer vitae justo eget magna fermentum. Ultricies leo integer malesuada nunc vel. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Dui id ornare arcu odio ut sem nulla. Consectetur libero id faucibus nisl tincidunt eget. Nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque. Tortor vitae purus faucibus ornare suspendisse. Turpis egestas maecenas pharetra convallis posuere morbi leo urna. Vel pretium lectus quam id leo in vitae turpis. Nisl purus in mollis nunc sed id semper risus. Amet tellus cras adipiscing enim. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Ipsum faucibus vitae aliquet nec.\
\
Id aliquet lectus proin nibh nisl condimentum id. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. Eu ultrices vitae auctor eu augue ut lectus arcu. Ac odio tempor orci dapibus ultrices in. Tristique et egestas quis ipsum suspendisse. Viverra adipiscing at in tellus integer feugiat scelerisque varius. Nulla pharetra diam sit amet nisl suscipit adipiscing. Viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Sodales neque sodales ut etiam. Proin nibh nisl condimentum id venenatis a condimentum vitae. Non arcu risus quis varius quam quisque id diam. Purus sit amet luctus venenatis.\
\
Dignissim convallis aenean et tortor at risus viverra adipiscing at. Ornare arcu odio ut sem nulla. Tristique magna sit amet purus. Tempus urna et pharetra pharetra massa massa. Nulla facilisi cras fermentum odio eu. Sit amet nisl purus in mollis nunc sed. Imperdiet proin fermentum leo vel orci porta non pulvinar. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Egestas diam in arcu cursus euismod quis viverra nibh. Porttitor leo a diam sollicitudin tempor. Commodo sed egestas egestas fringilla phasellus. Mauris nunc congue nisi vitae suscipit. Viverra adipiscing at in tellus integer feugiat.\
\
Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Bibendum ut tristique et egestas. Neque vitae tempus quam pellentesque. Donec et odio pellentesque diam volutpat. Mi proin sed libero enim sed faucibus. Magnis dis parturient montes nascetur ridiculus mus mauris vitae ultricies. Ac ut consequat semper viverra nam libero. Mattis rhoncus urna neque viverra justo nec ultrices dui sapien. Nunc faucibus a pellentesque sit amet porttitor eget dolor. Arcu cursus vitae congue mauris rhoncus aenean vel. Ac orci phasellus egestas tellus. Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Lectus urna duis convallis convallis. Commodo quis imperdiet massa tincidunt nunc pulvinar. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend. Consectetur libero id faucibus nisl tincidunt eget. Proin fermentum leo vel orci. Lobortis elementum nibh tellus molestie nunc non. Urna id volutpat lacus laoreet non curabitur gravida arcu.\
\
Proin nibh nisl condimentum id venenatis a condimentum vitae. Varius quam quisque id diam vel quam. Malesuada nunc vel risus commodo viverra maecenas accumsan lacus. Ullamcorper dignissim cras tincidunt lobortis. Nibh venenatis cras sed felis eget. Ut sem nulla pharetra diam sit amet nisl. Et sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque. Nunc sed augue lacus viverra vitae congue eu consequat. Id semper risus in hendrerit. Felis eget nunc lobortis mattis aliquam faucibus purus. Sed velit dignissim sodales ut eu sem integer. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Non diam phasellus vestibulum lorem sed risus. Morbi non arcu risus quis. Nunc non blandit massa enim nec.\
\
Odio tempor orci dapibus ultrices. Diam in arcu cursus euismod quis viverra nibh cras pulvinar. Natoque penatibus et magnis dis parturient montes nascetur. Nulla facilisi etiam dignissim diam quis enim. Cum sociis natoque penatibus et magnis dis parturient montes nascetur. Pellentesque id nibh tortor id aliquet. Id cursus metus aliquam eleifend mi in nulla posuere. Integer vitae justo eget magna fermentum. Enim neque volutpat ac tincidunt vitae semper quis. Curabitur vitae nunc sed velit dignissim sodales ut eu sem. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper. Tortor at risus viverra adipiscing.\
\
Sed velit dignissim sodales ut eu. Ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. Id porta nibh venenatis cras sed. Tellus at urna condimentum mattis. Duis at tellus at urna condimentum mattis. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Massa ultricies mi quis hendrerit dolor magna eget. Laoreet sit amet cursus sit amet dictum sit amet. Laoreet suspendisse interdum consectetur libero id. Ut sem viverra aliquet eget sit. Felis imperdiet proin fermentum leo. Nec ultrices dui sapien eget mi proin sed libero enim. Consectetur adipiscing elit ut aliquam. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Ut eu sem integer vitae justo eget magna fermentum iaculis.\
\
Eros donec ac odio tempor orci dapibus. Porttitor massa id neque aliquam vestibulum. Tristique senectus et netus et malesuada fames ac turpis. Amet dictum sit amet justo donec enim diam vulputate ut. Sollicitudin tempor id eu nisl nunc mi ipsum faucibus. Faucibus ornare suspendisse sed nisi lacus sed. Ultrices tincidunt arcu non sodales neque sodales ut. Tempus iaculis urna id volutpat lacus laoreet. Sapien nec sagittis aliquam malesuada. Velit euismod in pellentesque massa placerat duis. Bibendum ut tristique et egestas. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec. Vulputate odio ut enim blandit volutpat maecenas volutpat..";


static NSData *createRandomNSData()
{
    NSUInteger size = 10 * 1024 * 1024; // 10mb
    NSMutableData *data = [NSMutableData dataWithLength:size];
    u_int32_t *bytes = (u_int32_t *)data.mutableBytes;
    for (NSUInteger index = 0; index < size/sizeof(u_int32_t); index++)
    {
        bytes[index] = arc4random();
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

- (void)testOutputEqualsLongInput
{
    //set up data
    NSData *inputData = [longInputString dataUsingEncoding:NSUTF8StringEncoding];

    //compress
    NSData *compressedData = [inputData gzippedData];

    //decode
    NSData *outputData = [compressedData gunzippedData];
    NSString *outputString = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];
    XCTAssertEqualObjects(outputString, longInputString);
}

- (void)testOutputEqualsLongLongInput
{
    //set up data
    NSData *inputData = [longLongInputString dataUsingEncoding:NSUTF8StringEncoding];

    //compress
    NSData *compressedData = [inputData gzippedData];

    //decode
    NSData *outputData = [compressedData gunzippedData];
    NSString *outputString = [[NSString alloc] initWithData:outputData encoding:NSUTF8StringEncoding];
    XCTAssertEqualObjects(outputString, longLongInputString);
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

    //compress again
    NSData *outputData = [compressedData gzippedData];
    XCTAssertEqualObjects(compressedData, outputData);
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

- (void)testEncodeWriteFileDecodeInShell
{
    // Create a file of giberish
    NSString *inputString = @"Hello World!";
    NSData *inputData = [inputString dataUsingEncoding:NSUTF8StringEncoding];

    // compare old-style gzipped data (via /usr/lib/libz.dylib) to gzipped data
    NSData *seggzippedData = [inputData seg_gzippedData];
    NSData *gzippedData    = [inputData gzippedData];
    XCTAssertEqualObjects(seggzippedData, gzippedData);

    // compare gunzipped SEGGZIPPED data to original data
    NSData *expandedSEGGZippedData = [seggzippedData gunzippedData];
    XCTAssertEqualObjects(expandedSEGGZippedData, inputData);
}

- (void)testHugeEncodeWriteFileDecodeInShell
{
    // Create a file of giberish
    NSData *inputData = createRandomNSData();

    // compare old-style gzipped data (via /usr/lib/libz.dylib) to gzipped data
    NSData *seggzippedData = [inputData seg_gzippedData];
    NSData *gzippedData    = [inputData gzippedData];
    XCTAssertEqualObjects(seggzippedData, gzippedData);

    // compare gunzipped SEGGZIPPED data to original data
    NSData *expandedSEGGZippedData = [seggzippedData gunzippedData];
    XCTAssertEqualObjects(expandedSEGGZippedData, inputData);
}

@end
