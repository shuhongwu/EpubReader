//
//  ReaderRecords.h
//  AePubReader
//
//  Created by Alex on 1/16/13.
//
//

#import <Foundation/Foundation.h>

@interface ReaderRecords : NSObject <NSCoding> {
    
    int currentSpineIndex;//所在章节
	int currentPageInSpineIndex;//所在章节页数,从0开始
	int getGlobalPageCount;//此页在总页数的数字标示
	int totalPagesCount;//书籍总页数
}
@property (nonatomic) int currentSpineIndex;
@property (nonatomic) int currentPageInSpineIndex;
@property (nonatomic) int getGlobalPageCount;
@property (nonatomic) int totalPagesCount;

@end
