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

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.currentSpineIndex = [decoder decodeInt32ForKey:@"currentSpineIndex"];
        self.currentPageInSpineIndex = [decoder decodeInt32ForKey:@"currentPageInSpineIndex"];
        self.getGlobalPageCount = [decoder decodeInt32ForKey:@"getGlobalPageCount"];
        self.totalPagesCount = [decoder decodeInt32ForKey:@"totalPagesCount"];

    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    
    [encoder encodeInt32:currentSpineIndex forKey:@"currentSpineIndex"];
    [encoder encodeInt32:currentPageInSpineIndex forKey:@"currentPageInSpineIndex"];
    [encoder encodeInt32:getGlobalPageCount forKey:@"getGlobalPageCount"];
    [encoder encodeInt32:totalPagesCount forKey:@"totalPagesCount"];
}

@end
