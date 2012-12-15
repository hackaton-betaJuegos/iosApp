//
//  GC_GameData.m
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import "GC_GameData.h"

@implementation GC_Point

@synthesize x,y, type;

-(CGFloat)width{
    return 10.0;
}

-(CGFloat)height{
    return 10.0;
}

@end



@implementation GC_GameData

@synthesize gravity,speed,acceleration,initialX,initialY,finalX,finalY, points;


-(GC_GameData *)initFromJson:(NSData *)data{
    
    self = [super init];
    if (self) {
        NSError *error;
        NSDictionary *result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        self.gravity = [[result objectForKey:@"Gravity"] intValue];
        self.speed = [[result objectForKey:@"Speed"] intValue];
        self.acceleration = [[result objectForKey:@"Acceleration"] intValue];
        self.playerX = self.initialX = [[result objectForKey:@"InitialX"] intValue]*10;
        self.playerY = self.initialY = [[result objectForKey:@"InitialY"] intValue]*10;
        self.finalX = [[result objectForKey:@"FinalX"] intValue]*10;
        NSArray *pointsTemp = [result objectForKey:@"Points"];
        NSDictionary *dpoint;
        self.points = [NSMutableArray array];
        for ( dpoint in pointsTemp) {
            GC_Point *point = [[GC_Point alloc] init];
            point.x = [[dpoint objectForKey:@"x"] intValue]*10;
            point.y = [[dpoint objectForKey:@"y"] intValue]*10;
            point.type = [[dpoint objectForKey:@"type"] intValue];
            [self.points addObject:point];
        }
        self.plaverV0 = -1;
    }
    return self;
    
    
}

-(NSArray *)visibleBlocksForUlc:(CGPoint)ulc andLrc:(CGPoint)lrc{
    
    NSMutableArray *result = [NSMutableArray array];
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings){
        GC_Point *point=(GC_Point *)evaluatedObject;
        if (point.x-point.width > ulc.x && point.x < lrc.x) {
            if (point.y > ulc.y && point.y-point.height < lrc.y) {
                return YES;
            }
        }
        return NO;
    }];
    [result addObjectsFromArray:[self.points filteredArrayUsingPredicate:predicate]];
    return result;
    
}

-(void)playerDown{
    
    int blockPos = self.playerX/10;
    for (GC_Point *point in self.points){
        if(point.x == blockPos){
            
            if (point.y == self.playerY -10){
                self.plaverV0=-1;
                return;
            }
            
        }
        
    }
    self.plaverV0 -= 0.03;
    self.playerY += self.plaverV0;
}

@end

