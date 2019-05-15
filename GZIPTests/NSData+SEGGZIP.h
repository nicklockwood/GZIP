//
//  NSData+SEGGZIP.h
//  GZIPTests
//
//  Created by John Wolfe on 5/14/19.
//

#import <Foundation/Foundation.h>

extern void *_Nullable seg_libzOpen(void);

NS_ASSUME_NONNULL_BEGIN

@interface NSData (SEGGZIP)

- (nullable NSData *)seg_gzippedData;
- (BOOL)seg_isGzippedData;

@end

NS_ASSUME_NONNULL_END
