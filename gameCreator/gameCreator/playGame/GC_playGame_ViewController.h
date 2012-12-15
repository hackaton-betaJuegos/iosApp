//
//  GC_playGame_ViewController.h
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GC_GameData.h"
#import "GC_Renderer.h"

@interface GC_playGame_ViewController : UIViewController{
    
    IBOutlet UIButton *startView;
    IBOutlet UIView *pausedView;
    IBOutlet UIButton *backButton;
    GC_Renderer *renderer;
    NSTimer *timer;
    
}

@property GC_GameData *gameData;
@property (nonatomic, readwrite) UIViewController *parentViewController;

-(IBAction)startGame:(id)sender;
-(IBAction)pauseGame:(id)sender;
-(IBAction)resumeGame:(id)sender;
-(IBAction)exitGame:(id)sender;

@end
