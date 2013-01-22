//
//  Chapter.h
//  AePubReader
//
//  Created by Federico Frappi on 08/04/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CalcuelatePagesTotal;

@protocol CalcuelatePagesTotalDelegate <NSObject>
@required
- (void) totalPagesDone:(int)totalPages;
@end


@interface CalcuelatePagesTotal : NSObject <UIWebViewDelegate>{
    NSString* spinePath;
    NSString* title;
	NSString* text;
    int pageCount;
    int chapterIndex;
    CGRect windowSize;
    int fontPercentSize;
    NSArray *tempSpineArray;
    id <CalcuelatePagesTotalDelegate> delegate;

}

@property (nonatomic, assign) id delegate;
@property (nonatomic, readonly) int pageCount, chapterIndex, fontPercentSize;
@property (nonatomic, readonly) NSString *spinePath, *title, *text;
@property (nonatomic, readonly) CGRect windowSize;

- (id) initWithPath:(NSString*)theSpinePath title:(NSString*)theTitle chapterIndex:(int) theIndex;

- (void) loadChapterWithWindowSize:(CGRect)theWindowSize fontPercentSize:(int) theFontPercentSize EpubSpineArray:(NSArray *)spineArray;


@end
