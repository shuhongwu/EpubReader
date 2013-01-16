//
//  ReaderRecords.m
//  AePubReader
//
//  Created by Alex on 1/16/13.
//
//

#import "ReaderRecords.h"

@implementation ReaderRecords

@synthesize  currentSpineIndex;
@synthesize currentPageInSpineIndex;
@synthesize getGlobalPageCount;
@synthesize totalPagesCount;


- (void)dealloc {
    [super dealloc];
}

#pragma mark NSCoding

#define currentSpineIndexKey       @"currentSpineIndex"
#define currentPageInSpineIndexKey       @"currentPageInSpineIndex"
#define getGlobalPageCountKey       @"getGlobalPageCount"
#define currentSpineIndexKey       @"currentSpineIndex"

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.currentSpineIndex = [decoder decodeInt32ForKey:currentSpineIndexKey];
        self.currentPageInSpineIndex = [decoder decodeInt32ForKey:currentPageInSpineIndexKey];
        self.getGlobalPageCount = [decoder decodeInt32ForKey:getGlobalPageCountKey];
        self.totalPagesCount = [decoder decodeInt32ForKey:currentSpineIndexKey];

    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    
    [encoder encodeInt32:currentSpineIndex forKey:currentSpineIndexKey];
    [encoder encodeInt32:currentPageInSpineIndex forKey:currentPageInSpineIndexKey];
    [encoder encodeInt32:getGlobalPageCount forKey:getGlobalPageCountKey];
    [encoder encodeInt32:totalPagesCount forKey:currentSpineIndexKey];
}

@end
