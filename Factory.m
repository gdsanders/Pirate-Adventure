//
//  Factory.m
//  Pirate Adventure
//
//  Created by G.D. Sanders on 9/4/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"

@implementation Factory

-(NSArray *)tiles
{
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"We need a fiery pirate Captain for this voyage. Are you in?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"You are in the pirate armory. Upgrade your armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpg"];
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon.  Wait, wasn't this in a Scooby Doo episode?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"You have found a parrot.  His name is Pookie Dane Berkshire. Pookie does not mess around and guards his Captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"Dude!  You have found a pirate weapon cache. Want a new pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpg"];
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"You have been captured and are ordered to walk the plank. AAaaaa meee hardy!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"Tile 7 story";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"Tile 8 story";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"Tile 9 story";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"Tile 10 story";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"Tile 11 story";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Tile 12 story";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;
    
}

@end
