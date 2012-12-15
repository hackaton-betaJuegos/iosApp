//
//  GC_ThirdViewController.m
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import "GC_ThirdViewController.h"
#import "GC_playGame_ViewController.h"

@interface GC_ThirdViewController ()

@end

@implementation GC_ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Crear", @"Crear");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)abrirJuego:(id)sender{
    
    GC_playGame_ViewController *playgame = [[GC_playGame_ViewController alloc] initWithNibName:@"GC_playGame_ViewController" bundle:nil];
    [self presentModalViewController:playgame animated:YES];
    playgame.parentViewController=self;
    
}

@end
