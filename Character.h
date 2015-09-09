//
//  Character.h
//  Pirate Adventure
//
//  Created by G.D. Sanders on 9/9/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

@interface Character : NSObject

@property (strong, nonatomic) Armor *armor;
@property (strong, nonatomic) Weapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;


@end
