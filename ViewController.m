//
//  ViewController.m
//  Pirate Adventure
//
//  Created by G.D. Sanders on 9/4/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"
#import "Character.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Factory *factory = [[Factory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.currentPoint = CGPointMake(0, 0);
    [self updateCharacterStatsForArmor:nil withWeapon:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
   }

- (IBAction)actionButtonPressed:(UIButton *)sender {
    
    Tile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    [self updateCharacterStatsForArmor:tile.armor withWeapon:tile.weapon withHealthEffect:tile.healthEffect];
    [self updateTile];
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.x);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

// Helper methods listed below

- (void)updateTile
{
    Tile *tileObj = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileObj.story;
    self.backgroundImageView.image = tileObj.backgroundImage;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.armorLabel.text = self.character.armor.name;
    self.weaponLabel.text = self.character.weapon.name;
    [self.actionButton setTitle:tileObj.actionButtonName forState:UIControlStateNormal];
}

- (void)updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
    
}


- (BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.y >= 0 && point.x >=0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }
    else {
        return YES;
    }
}

-(void)updateCharacterStatsForArmor:(Armor *)armor withWeapon:(Weapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil) {
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0) {
        self.character.health = self.character.health + healthEffect;
    }
    else {
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}



@end



