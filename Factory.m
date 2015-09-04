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
    tile1.story = @"Tile 1 story";
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"Tile 2 story";
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"Tile 3 story";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"Tile 4 story";
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"Tile 5 story";
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"Tile 6 story";
    
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
