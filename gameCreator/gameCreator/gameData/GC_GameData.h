//
//  GC_GameData.h
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GC_Point : NSObject

@property NSInteger x,y;

@end



@interface GC_GameData : NSObject

@property NSInteger speed, acceleration, initialX, initialY, finalX, finalY;
@property BOOL gravity;
@property NSArray *columns;

@end
