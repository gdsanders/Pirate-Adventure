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
    Weapon *bluntedSword = [[Weapon alloc] init];
    bluntedSword.name = @"Blunted sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Grab the Sword!";
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"You are in the pirate armory. Upgrade your armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpg"];
    Armor *steelArmor = [[Armor alloc] init];
    steelArmor.name = @"Cold blue steel armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take armor";
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon.  Wait, wasn't this in a Scooby Doo episode?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"You have found a parrot.  His name is Pookie Dane Berkshire. Pookie does not mess around and guards his Captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    Armor *parrotArmor = [[Armor alloc] init];
    parrotArmor.name = @"Bad ass parrot";
    parrotArmor.health = 20;
    tile4.actionButtonName = @"RELEASE THE PARROT!";
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"Dude!  You have found a pirate weapon cache. Want a new pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpg"];
    Weapon *pistol = [[Weapon alloc] init];
    pistol.name = @"Browning Hi-Power 9mm";
    pistol.damage = 17;
    tile5.actionButtonName = @"Pop a cap in his ass";
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"You have been captured and are ordered to walk the plank. AAaaaa meee hardy!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -24;
    tile6.actionButtonName = @"Outswim the sharks";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"Pirate battle off the coast. Should we engage?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpg"];
    tile7.healthEffect = 9;
    tile7.actionButtonName = @"Fight th scum!";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"Arrrgggggg.  It's the kraken!  Hide your booty mate!";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -50;
    tile8.actionButtonName = @"Posiden, Posedian, whatever your name";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"You have stumbled and bumbled onto hidden pirate cave. Plunder...mmmmm?";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpg"];
    tile9.healthEffect = 40;
    tile9.actionButtonName = @"Fill bags with treasure!";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"A group of pirates are trying to board.  ARRRGGGGG!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -10;
    tile10.actionButtonName = @"Repel the scum";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"In the fathoms below, many treasures can be found.  Will you control the treasure or the treasure control you?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Take take take";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Final faceoff with the fiend of the sea - Pirate Boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Call Bahamas Workforce Commission";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;
    
}

-(Character *)character
{
    Character *character = [[Character alloc] init];
    character.health = 100;
    
    Armor *armor = [[Armor alloc] init];
    character.armor = armor;
    armor.name = @"Cloak";
    armor.health = 5;
    
    Weapon *weapon = [[Weapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;

    return character;
    
}

-(PirateBoss *)boss
{
    PirateBoss *boss = [[PirateBoss alloc] init];
    boss.health = 65;
    return boss;
}


@end
