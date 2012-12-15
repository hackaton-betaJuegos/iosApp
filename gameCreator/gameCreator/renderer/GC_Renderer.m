//
//  GC_Renderer.m
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import "GC_Renderer.h"

@implementation GC_Renderer

@synthesize gameData, xoffset;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        self.xoffset=0;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, rect);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    
    for (GC_Point *point in self.gameData.points){
        CGRect newrect = CGRectMake( point.x-self.xoffset , self.frame.size.height - point.y , point.width, point.height);
        CGContextSetRGBFillColor(context, 0.0, 0.0, 0.0, 1.0);
        CGContextFillRect(context,newrect);
        
    }
    
    CGRect newrect = CGRectMake(gameData.playerX-self.xoffset , self.frame.size.height - gameData.playerY , 10, 10);
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
    CGContextFillRect(context,newrect);
    
}

-(void)updateRect{
    
}

@end
