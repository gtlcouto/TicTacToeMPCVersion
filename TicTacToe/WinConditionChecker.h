//
//  WinningCondition.h
//  TicTacToe
//
//  Created by Diego Cichello on 1/8/15.
//  Copyright (c) 2015 Mobile Makers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WinConditionChecker : NSObject





- (BOOL) checkWinConditions: (NSSet *) currentSet;
- (WinConditionChecker *) initWithWinningConditionsSet;




@end
