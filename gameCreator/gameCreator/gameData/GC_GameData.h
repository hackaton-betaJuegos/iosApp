//
//  GC_GameData.h
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{SQUARE_GOOD=0, SQUARE_BAD=1}SQUARE_TYPE;

@interface GC_Point : NSObject

@property NSInteger x,y;
@property SQUARE_TYPE type;


-(CGFloat)width;

-(CGFloat)height;


@end



@interface GC_GameData : NSObject

@property NSInteger speed, acceleration, initialX, initialY, finalX, finalY, playerX, playerY;
@property CGFloat plaverV0;
@property BOOL gravity;
@property NSMutableArray *points;

-(GC_GameData *)initFromJson:(NSData *)data;
-(NSArray *)visibleBlocksForUlc:(CGPoint)ulc andLrc:(CGPoint)lrc;
-(void)playerDown;

@end
