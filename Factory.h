//
//  Factory.h
//  Pirate Adventure
//
//  Created by G.D. Sanders on 9/4/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "PirateBoss.h"

@interface Factory : NSObject

-(NSArray *)tiles;

-(Character *)character;

-(PirateBoss *)boss;

@end
