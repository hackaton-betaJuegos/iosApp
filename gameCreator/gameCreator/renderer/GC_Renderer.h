//
//  GC_Renderer.h
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GC_GameData.h"

@interface GC_Renderer : UIView{
    
    

}

@property NSInteger xoffset;
@property GC_GameData *gameData;

-(void)updateRect;

@end
