//
//  RootViewController.m
//  TicTacToe
//
//  Created by Yi-Chin Sun on 1/8/15.
//  Copyright (c) 2015 Mobile Makers. All rights reserved.
//

#import "RootViewController.h"
#import "GameViewController.h"
#import "ConnectionsViewController.h"

@interface RootViewController ()
@property BOOL isMultiplayer;
@property BOOL isMultiplayerMPC;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isMultiplayerMPC = NO;
    self.isMultiplayer = NO;
}
- (IBAction)singlePlayerButtonTapped:(id)sender
{
    self.isMultiplayer = NO;
}
- (IBAction)multiplayerButtonTapped:(id)sender
{
    self.isMultiplayer = YES;
}
- (IBAction)multiplayerMPCbuttonTapped:(id)sender {
    self.isMultiplayerMPC = YES;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{


if ([[segue.destinationViewController restorationIdentifier] isEqualToString:@"GameViewController"])
    {
        if(self.isMultiplayerMPC)
        {
        GameViewController *vc = segue.destinationViewController;
        vc.isMultiplayer = self.isMultiplayer;
            vc.isMPCMultiplayer = self.isMultiplayerMPC;
        }
    

    }
}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue
{
}


@end
