//
//  BookMarkRecords.h
//  AePubReader
//
//  Created by Alex on 1/17/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface BookMarkRecords : NSManagedObject

@property (nonatomic, retain) NSString * bookname;
@property (nonatomic) int32_t currentPageInSpineIndex;
@property (nonatomic) int32_t currentSpineIndex;
@property (nonatomic) int32_t getGlobalPageCount;
@property (nonatomic) double time;
@property (nonatomic) int32_t totalPagesCount;

@end
