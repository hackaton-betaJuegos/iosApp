//
//  GC_playGame_ViewController.m
//  gameCreator
//
//  Created by Guillermo on 15/12/12.
//  Copyright (c) 2012 Guillermo. All rights reserved.
//

#import "GC_playGame_ViewController.h"

@interface GC_playGame_ViewController ()

@end

@implementation GC_playGame_ViewController

@synthesize gameData, parentViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSString *json = @"{\"Blocks\":[{\"X\":0,\"Y\":3,\"Type\":0},{\"X\":1,\"Y\":3,\"Type\":0},{\"X\":2,\"Y\":3,\"Type\":0},{\"X\":3,\"Y\":3,\"Type\":0},{\"X\":4,\"Y\":3,\"Type\":0},{\"X\":5,\"Y\":3,\"Type\":0},{\"X\":6,\"Y\":3,\"Type\":0},{\"X\":7,\"Y\":3,\"Type\":0},{\"X\":8,\"Y\":3,\"Type\":0},{\"X\":9,\"Y\":3,\"Type\":0},{\"X\":10,\"Y\":3,\"Type\":0},{\"X\":11,\"Y\":3,\"Type\":0},{\"X\":12,\"Y\":3,\"Type\":0},{\"X\":13,\"Y\":3,\"Type\":0},{\"X\":14,\"Y\":3,\"Type\":0},{\"X\":15,\"Y\":3,\"Type\":0},{\"X\":16,\"Y\":3,\"Type\":0},{\"X\":17,\"Y\":3,\"Type\":0},{\"X\":18,\"Y\":3,\"Type\":0},{\"X\":19,\"Y\":3,\"Type\":0},{\"X\":20,\"Y\":3,\"Type\":0},{\"X\":21,\"Y\":3,\"Type\":0},{\"X\":22,\"Y\":3,\"Type\":0},{\"X\":23,\"Y\":3,\"Type\":0},{\"X\":24,\"Y\":3,\"Type\":0},{\"X\":25,\"Y\":3,\"Type\":0},{\"X\":26,\"Y\":3,\"Type\":0},{\"X\":27,\"Y\":3,\"Type\":0},{\"X\":28,\"Y\":3,\"Type\":0},{\"X\":29,\"Y\":3,\"Type\":0},{\"X\":30,\"Y\":3,\"Type\":0},{\"X\":31,\"Y\":3,\"Type\":0},{\"X\":32,\"Y\":3,\"Type\":0},{\"X\":33,\"Y\":3,\"Type\":0},{\"X\":34,\"Y\":3,\"Type\":0},{\"X\":35,\"Y\":3,\"Type\":0},{\"X\":36,\"Y\":3,\"Type\":0},{\"X\":37,\"Y\":3,\"Type\":0},{\"X\":38,\"Y\":3,\"Type\":0},{\"X\":39,\"Y\":3,\"Type\":0},{\"X\":40,\"Y\":3,\"Type\":0},{\"X\":41,\"Y\":3,\"Type\":0},{\"X\":42,\"Y\":3,\"Type\":0},{\"X\":43,\"Y\":3,\"Type\":0},{\"X\":44,\"Y\":3,\"Type\":0},{\"X\":45,\"Y\":3,\"Type\":0},{\"X\":46,\"Y\":3,\"Type\":0},{\"X\":47,\"Y\":3,\"Type\":0},{\"X\":48,\"Y\":3,\"Type\":0},{\"X\":49,\"Y\":3,\"Type\":0},{\"X\":50,\"Y\":4,\"Type\":0},{\"X\":51,\"Y\":4,\"Type\":0},{\"X\":52,\"Y\":4,\"Type\":0},{\"X\":53,\"Y\":4,\"Type\":0},{\"X\":54,\"Y\":4,\"Type\":0},{\"X\":55,\"Y\":4,\"Type\":0},{\"X\":56,\"Y\":4,\"Type\":0},{\"X\":57,\"Y\":4,\"Type\":0},{\"X\":58,\"Y\":4,\"Type\":0},{\"X\":59,\"Y\":4,\"Type\":0},{\"X\":60,\"Y\":4,\"Type\":0},{\"X\":61,\"Y\":4,\"Type\":0},{\"X\":62,\"Y\":4,\"Type\":0},{\"X\":63,\"Y\":4,\"Type\":0},{\"X\":64,\"Y\":4,\"Type\":0},{\"X\":65,\"Y\":4,\"Type\":0},{\"X\":66,\"Y\":4,\"Type\":0},{\"X\":67,\"Y\":4,\"Type\":0},{\"X\":68,\"Y\":4,\"Type\":0},{\"X\":69,\"Y\":4,\"Type\":0},{\"X\":70,\"Y\":4,\"Type\":0},{\"X\":71,\"Y\":4,\"Type\":0},{\"X\":72,\"Y\":4,\"Type\":0},{\"X\":73,\"Y\":4,\"Type\":0},{\"X\":74,\"Y\":4,\"Type\":0},{\"X\":75,\"Y\":4,\"Type\":0},{\"X\":76,\"Y\":4,\"Type\":0},{\"X\":77,\"Y\":4,\"Type\":0},{\"X\":78,\"Y\":4,\"Type\":0},{\"X\":79,\"Y\":4,\"Type\":0},{\"X\":80,\"Y\":4,\"Type\":0},{\"X\":81,\"Y\":4,\"Type\":0},{\"X\":82,\"Y\":4,\"Type\":0},{\"X\":83,\"Y\":4,\"Type\":0},{\"X\":84,\"Y\":4,\"Type\":0},{\"X\":85,\"Y\":4,\"Type\":0},{\"X\":86,\"Y\":4,\"Type\":0},{\"X\":87,\"Y\":4,\"Type\":0},{\"X\":88,\"Y\":4,\"Type\":0},{\"X\":89,\"Y\":4,\"Type\":0},{\"X\":90,\"Y\":4,\"Type\":0},{\"X\":91,\"Y\":4,\"Type\":0},{\"X\":92,\"Y\":4,\"Type\":0},{\"X\":93,\"Y\":4,\"Type\":0},{\"X\":94,\"Y\":4,\"Type\":0},{\"X\":95,\"Y\":4,\"Type\":0},{\"X\":96,\"Y\":4,\"Type\":0},{\"X\":97,\"Y\":4,\"Type\":0},{\"X\":98,\"Y\":4,\"Type\":0},{\"X\":99,\"Y\":4,\"Type\":0},{\"X\":100,\"Y\":1,\"Type\":0},{\"X\":101,\"Y\":1,\"Type\":0},{\"X\":102,\"Y\":1,\"Type\":0},{\"X\":103,\"Y\":1,\"Type\":0},{\"X\":104,\"Y\":1,\"Type\":0},{\"X\":105,\"Y\":1,\"Type\":0},{\"X\":106,\"Y\":1,\"Type\":0},{\"X\":107,\"Y\":1,\"Type\":0},{\"X\":108,\"Y\":1,\"Type\":0},{\"X\":109,\"Y\":1,\"Type\":0},{\"X\":110,\"Y\":1,\"Type\":0},{\"X\":111,\"Y\":1,\"Type\":0},{\"X\":112,\"Y\":1,\"Type\":0},{\"X\":113,\"Y\":1,\"Type\":0},{\"X\":114,\"Y\":1,\"Type\":0},{\"X\":115,\"Y\":1,\"Type\":0},{\"X\":116,\"Y\":1,\"Type\":0},{\"X\":117,\"Y\":1,\"Type\":0},{\"X\":118,\"Y\":1,\"Type\":0},{\"X\":119,\"Y\":1,\"Type\":0},{\"X\":120,\"Y\":1,\"Type\":0},{\"X\":121,\"Y\":1,\"Type\":0},{\"X\":122,\"Y\":1,\"Type\":0},{\"X\":123,\"Y\":1,\"Type\":0},{\"X\":124,\"Y\":1,\"Type\":0},{\"X\":125,\"Y\":1,\"Type\":0},{\"X\":126,\"Y\":1,\"Type\":0},{\"X\":127,\"Y\":1,\"Type\":0},{\"X\":128,\"Y\":1,\"Type\":0},{\"X\":129,\"Y\":1,\"Type\":0},{\"X\":130,\"Y\":1,\"Type\":0},{\"X\":131,\"Y\":1,\"Type\":0},{\"X\":132,\"Y\":1,\"Type\":0},{\"X\":133,\"Y\":1,\"Type\":0},{\"X\":134,\"Y\":1,\"Type\":0},{\"X\":135,\"Y\":1,\"Type\":0},{\"X\":136,\"Y\":1,\"Type\":0},{\"X\":137,\"Y\":1,\"Type\":0},{\"X\":138,\"Y\":1,\"Type\":0},{\"X\":139,\"Y\":1,\"Type\":0},{\"X\":140,\"Y\":1,\"Type\":0},{\"X\":141,\"Y\":1,\"Type\":0},{\"X\":142,\"Y\":1,\"Type\":0},{\"X\":143,\"Y\":1,\"Type\":0},{\"X\":144,\"Y\":1,\"Type\":0},{\"X\":145,\"Y\":1,\"Type\":0},{\"X\":146,\"Y\":1,\"Type\":0},{\"X\":147,\"Y\":1,\"Type\":0},{\"X\":148,\"Y\":1,\"Type\":0},{\"X\":149,\"Y\":1,\"Type\":0},{\"X\":150,\"Y\":1,\"Type\":0},{\"X\":151,\"Y\":1,\"Type\":0},{\"X\":152,\"Y\":1,\"Type\":0},{\"X\":153,\"Y\":1,\"Type\":0},{\"X\":154,\"Y\":1,\"Type\":0},{\"X\":155,\"Y\":1,\"Type\":0},{\"X\":156,\"Y\":1,\"Type\":0},{\"X\":157,\"Y\":1,\"Type\":0},{\"X\":158,\"Y\":1,\"Type\":0},{\"X\":159,\"Y\":1,\"Type\":0},{\"X\":160,\"Y\":1,\"Type\":0},{\"X\":161,\"Y\":1,\"Type\":0},{\"X\":162,\"Y\":1,\"Type\":0},{\"X\":163,\"Y\":1,\"Type\":0},{\"X\":164,\"Y\":1,\"Type\":0},{\"X\":165,\"Y\":1,\"Type\":0},{\"X\":166,\"Y\":1,\"Type\":0},{\"X\":167,\"Y\":1,\"Type\":0},{\"X\":168,\"Y\":1,\"Type\":0},{\"X\":169,\"Y\":1,\"Type\":0},{\"X\":170,\"Y\":1,\"Type\":0},{\"X\":171,\"Y\":1,\"Type\":0},{\"X\":172,\"Y\":1,\"Type\":0},{\"X\":173,\"Y\":1,\"Type\":0},{\"X\":174,\"Y\":1,\"Type\":0},{\"X\":175,\"Y\":1,\"Type\":0},{\"X\":176,\"Y\":1,\"Type\":0},{\"X\":177,\"Y\":1,\"Type\":0},{\"X\":178,\"Y\":1,\"Type\":0},{\"X\":179,\"Y\":1,\"Type\":0},{\"X\":180,\"Y\":1,\"Type\":0},{\"X\":181,\"Y\":1,\"Type\":0},{\"X\":182,\"Y\":1,\"Type\":0},{\"X\":183,\"Y\":1,\"Type\":0},{\"X\":184,\"Y\":1,\"Type\":0},{\"X\":185,\"Y\":1,\"Type\":0},{\"X\":186,\"Y\":1,\"Type\":0},{\"X\":187,\"Y\":1,\"Type\":0},{\"X\":188,\"Y\":1,\"Type\":0},{\"X\":189,\"Y\":1,\"Type\":0},{\"X\":190,\"Y\":1,\"Type\":0},{\"X\":191,\"Y\":1,\"Type\":0},{\"X\":192,\"Y\":1,\"Type\":0},{\"X\":193,\"Y\":1,\"Type\":0},{\"X\":194,\"Y\":1,\"Type\":0},{\"X\":195,\"Y\":1,\"Type\":0},{\"X\":196,\"Y\":1,\"Type\":0},{\"X\":197,\"Y\":1,\"Type\":0},{\"X\":198,\"Y\":1,\"Type\":0},{\"X\":199,\"Y\":1,\"Type\":0},{\"X\":6,\"Y\":6,\"Type\":0},{\"X\":6,\"Y\":6,\"Type\":0},{\"X\":6,\"Y\":6,\"Type\":0},{\"X\":6,\"Y\":6,\"Type\":0},{\"X\":6,\"Y\":6,\"Type\":0},{\"X\":6,\"Y\":6,\"Type\":0},{\"X\":7,\"Y\":6,\"Type\":0},{\"X\":8,\"Y\":6,\"Type\":0},{\"X\":9,\"Y\":6,\"Type\":0},{\"X\":9,\"Y\":6,\"Type\":0},{\"X\":10,\"Y\":6,\"Type\":0},{\"X\":10,\"Y\":6,\"Type\":0},{\"X\":11,\"Y\":6,\"Type\":0},{\"X\":11,\"Y\":6,\"Type\":0},{\"X\":12,\"Y\":6,\"Type\":0},{\"X\":12,\"Y\":6,\"Type\":0},{\"X\":12,\"Y\":6,\"Type\":0},{\"X\":12,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":13,\"Y\":6,\"Type\":0},{\"X\":14,\"Y\":6,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":14,\"Y\":5,\"Type\":0},{\"X\":19,\"Y\":5,\"Type\":0},{\"X\":19,\"Y\":5,\"Type\":0},{\"X\":19,\"Y\":5,\"Type\":0},{\"X\":19,\"Y\":5,\"Type\":0},{\"X\":19,\"Y\":5,\"Type\":0},{\"X\":19,\"Y\":5,\"Type\":0},{\"X\":19,\"Y\":4,\"Type\":0},{\"X\":19,\"Y\":4,\"Type\":0},{\"X\":19,\"Y\":4,\"Type\":0},{\"X\":19,\"Y\":4,\"Type\":0},{\"X\":19,\"Y\":3,\"Type\":0},{\"X\":19,\"Y\":3,\"Type\":0},{\"X\":19,\"Y\":3,\"Type\":0},{\"X\":19,\"Y\":3,\"Type\":0},{\"X\":19,\"Y\":4,\"Type\":0},{\"X\":19,\"Y\":4,\"Type\":0},{\"X\":19,\"Y\":4,\"Type\":0},{\"X\":20,\"Y\":4,\"Type\":0},{\"X\":20,\"Y\":5,\"Type\":0},{\"X\":20,\"Y\":5,\"Type\":0},{\"X\":21,\"Y\":5,\"Type\":0},{\"X\":22,\"Y\":5,\"Type\":0},{\"X\":22,\"Y\":5,\"Type\":0},{\"X\":22,\"Y\":5,\"Type\":0},{\"X\":23,\"Y\":5,\"Type\":0},{\"X\":23,\"Y\":5,\"Type\":0},{\"X\":24,\"Y\":5,\"Type\":0},{\"X\":24,\"Y\":5,\"Type\":0},{\"X\":24,\"Y\":5,\"Type\":0},{\"X\":24,\"Y\":5,\"Type\":0},{\"X\":24,\"Y\":5,\"Type\":0},{\"X\":25,\"Y\":6,\"Type\":0},{\"X\":25,\"Y\":6,\"Type\":0},{\"X\":25,\"Y\":6,\"Type\":0},{\"X\":25,\"Y\":6,\"Type\":0},{\"X\":25,\"Y\":7,\"Type\":0},{\"X\":25,\"Y\":7,\"Type\":0},{\"X\":26,\"Y\":7,\"Type\":0},{\"X\":26,\"Y\":7,\"Type\":0},{\"X\":26,\"Y\":7,\"Type\":0},{\"X\":26,\"Y\":7,\"Type\":0},{\"X\":26,\"Y\":7,\"Type\":0},{\"X\":27,\"Y\":7,\"Type\":0},{\"X\":27,\"Y\":7,\"Type\":0},{\"X\":27,\"Y\":7,\"Type\":0},{\"X\":28,\"Y\":7,\"Type\":0},{\"X\":28,\"Y\":7,\"Type\":0},{\"X\":28,\"Y\":7,\"Type\":0},{\"X\":28,\"Y\":7,\"Type\":0},{\"X\":29,\"Y\":7,\"Type\":0},{\"X\":29,\"Y\":7,\"Type\":0},{\"X\":29,\"Y\":7,\"Type\":0},{\"X\":29,\"Y\":7,\"Type\":0},{\"X\":30,\"Y\":7,\"Type\":0},{\"X\":30,\"Y\":7,\"Type\":0},{\"X\":30,\"Y\":7,\"Type\":0},{\"X\":30,\"Y\":7,\"Type\":0},{\"X\":30,\"Y\":7,\"Type\":0},{\"X\":31,\"Y\":7,\"Type\":0},{\"X\":31,\"Y\":7,\"Type\":0},{\"X\":31,\"Y\":7,\"Type\":0},{\"X\":31,\"Y\":8,\"Type\":0},{\"X\":31,\"Y\":8,\"Type\":0},{\"X\":31,\"Y\":8,\"Type\":0},{\"X\":32,\"Y\":8,\"Type\":0},{\"X\":32,\"Y\":8,\"Type\":0},{\"X\":32,\"Y\":8,\"Type\":0},{\"X\":32,\"Y\":8,\"Type\":0},{\"X\":32,\"Y\":8,\"Type\":0},{\"X\":33,\"Y\":8,\"Type\":0},{\"X\":33,\"Y\":8,\"Type\":0},{\"X\":33,\"Y\":8,\"Type\":0},{\"X\":33,\"Y\":8,\"Type\":0},{\"X\":33,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":34,\"Y\":8,\"Type\":0},{\"X\":5,\"Y\":20,\"Type\":0},{\"X\":5,\"Y\":20,\"Type\":0},{\"X\":5,\"Y\":20,\"Type\":0},{\"X\":5,\"Y\":19,\"Type\":0},{\"X\":5,\"Y\":19,\"Type\":0},{\"X\":5,\"Y\":17,\"Type\":0},{\"X\":5,\"Y\":17,\"Type\":0},{\"X\":5,\"Y\":16,\"Type\":0},{\"X\":5,\"Y\":16,\"Type\":0},{\"X\":5,\"Y\":16,\"Type\":0},{\"X\":5,\"Y\":16,\"Type\":0},{\"X\":4,\"Y\":18,\"Type\":0},{\"X\":4,\"Y\":18,\"Type\":0},{\"X\":4,\"Y\":18,\"Type\":0},{\"X\":5,\"Y\":18,\"Type\":0},{\"X\":5,\"Y\":18,\"Type\":0},{\"X\":6,\"Y\":18,\"Type\":0},{\"X\":7,\"Y\":18,\"Type\":0},{\"X\":7,\"Y\":18,\"Type\":0},{\"X\":8,\"Y\":18,\"Type\":0},{\"X\":9,\"Y\":18,\"Type\":0},{\"X\":9,\"Y\":18,\"Type\":0},{\"X\":9,\"Y\":18,\"Type\":0},{\"X\":9,\"Y\":18,\"Type\":0},{\"X\":9,\"Y\":18,\"Type\":0},{\"X\":8,\"Y\":20,\"Type\":0},{\"X\":8,\"Y\":20,\"Type\":0},{\"X\":8,\"Y\":20,\"Type\":0},{\"X\":8,\"Y\":19,\"Type\":0},{\"X\":8,\"Y\":19,\"Type\":0},{\"X\":8,\"Y\":17,\"Type\":0},{\"X\":8,\"Y\":17,\"Type\":0},{\"X\":8,\"Y\":17,\"Type\":0},{\"X\":8,\"Y\":16,\"Type\":0},{\"X\":8,\"Y\":16,\"Type\":0},{\"X\":8,\"Y\":16,\"Type\":0},{\"X\":8,\"Y\":16,\"Type\":0},{\"X\":12,\"Y\":19,\"Type\":0},{\"X\":12,\"Y\":19,\"Type\":0},{\"X\":12,\"Y\":19,\"Type\":0},{\"X\":12,\"Y\":19,\"Type\":0},{\"X\":12,\"Y\":18,\"Type\":0},{\"X\":12,\"Y\":18,\"Type\":0},{\"X\":12,\"Y\":17,\"Type\":0},{\"X\":12,\"Y\":17,\"Type\":0},{\"X\":12,\"Y\":16,\"Type\":0},{\"X\":12,\"Y\":16,\"Type\":0},{\"X\":12,\"Y\":16,\"Type\":0},{\"X\":12,\"Y\":16,\"Type\":0},{\"X\":12,\"Y\":16,\"Type\":0},{\"X\":12,\"Y\":16,\"Type\":0}],\"Gravity\":70.0,\"Speed\":20.0,\"Acceleration\":30.0,\"InitialX\":2,\"InitialY\":10,\"FinalX\":200}";
        NSError *error;
        NSString *contents = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://hackaya.com/api/games"] encoding:NSUTF8StringEncoding error:&error];
        NSData* jsonData = [contents dataUsingEncoding:NSUTF8StringEncoding];
        NSArray *array = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves error:&error];
        NSDictionary * dic = [array objectAtIndex:[array count]-1];
        json = [dic objectForKey:@"data"];
        self.gameData = [[GC_GameData alloc] initFromJson:[json dataUsingEncoding:NSUTF8StringEncoding]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    renderer = [[GC_Renderer alloc] initWithFrame:self.view.frame];
    renderer.gameData = self.gameData;
    [self.view insertSubview:renderer belowSubview:backButton];
    pausedView.hidden = YES;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
}

-(IBAction)startGame:(id)sender{
    startView.alpha = 0;
    startView.enabled = NO;
    timer = [NSTimer scheduledTimerWithTimeInterval:(0.01) target:self selector:@selector(update) userInfo:nil repeats:YES];
}

-(IBAction)pauseGame:(id)sender{
    pausedView.hidden = NO;
}

-(IBAction)exitGame:(id)sender{
    [self.parentViewController dismissModalViewControllerAnimated:YES];
}

-(IBAction)resumeGame:(id)sender{
    pausedView.hidden = YES;
    
}

-(IBAction)goUp:(id)sender{
    gameData.plaverV0 = 3;
}

-(void)update{
    renderer.xoffset++;
    gameData.playerX++;
    [gameData playerDown];
    [renderer setNeedsDisplay];
}






-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    if (UIInterfaceOrientationIsPortrait(toInterfaceOrientation)) {
        return NO;
    }
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
