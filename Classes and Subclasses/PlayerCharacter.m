//
//  PlayerCharacter.m
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "PlayerCharacter.h"

@implementation PlayerCharacter


- (instancetype)initWithSpecies:(NSString*)species
                     Playername:(NSString*)playername
{
    self = [super initWithSpecies:species];
    if (self)
    {
        _playername = playername;
        _health = -1;
        _speed = -1;
        _attack = -1;
        _defense = -1;
        _action = -1;
        _class = @"Classless";
    }
    return self;
}







- (instancetype)initWithSpecies:(NSString *)species
{
    return [self initWithSpecies:species
                      Playername:@"Nameless"];
}


- (void)playerstats
{
    
    NSLog(@"\nPlayername: %@\nSpecies: %@\nClass: %@\nWeapon: %@\nHealth: %@\nActionPoints: %@\nAttack: %@\nDefense: %@\nSpeed: %@", _playername, _species, _class, _weapon, @(_health), @(_action), @(_attack), @(_defense), @(_speed));
}


- (NSInteger)health
{
    return _health;
}

- (NSInteger)speed
{
    return _speed;
}

- (NSInteger)actionp
{
    return _action;
}

- (NSInteger)attack
{
    return _attack;
}

- (NSInteger)defense
{
    return _defense;
}

- (NSString *)playername
{
    return _playername;
}

- (NSString *)characterclass
{
    return _class;
}

- (void)setPlayerName:(NSString *)playername
{
    _playername = playername;
}
- (void)takeAction:(NSInteger)actionp
{
    _action = actionp;
}

- (void)takeDamage:(NSInteger)damage
{
    NSInteger damagetaken = (MAX((damage-_defense),0));
    NSLog(@"Damage taken = %@", @(damagetaken));
    _health -= damagetaken;
}

- (NSString *)weapon
{
    return _weapon;
}

-(void)setclass:(int)classvalue
{
    switch(classvalue)
    {
        case(1):
        {
            _health = 14 + arc4random_uniform(5);
            _speed = 3 + arc4random_uniform(5);
            _attack = 4 + arc4random_uniform(3);
            _defense = 3 + arc4random_uniform(2);
            _action = 5;
            _class = @"Knight";
            _weapon = @"Sword and Shield";
            break;
        }
        case(2):
        {
            _health = 10 + arc4random_uniform(5);
            _speed = 5 + arc4random_uniform(5);
            _attack = 4 + arc4random_uniform(3);
            _defense = 0 + arc4random_uniform(2);
            _action = 5;
            _class = @"Mage";
            _weapon = @"Oak Staff";
        }
        case(3):
        {
            _health = 12 + arc4random_uniform(5);
            _speed = 7 + arc4random_uniform(5);
            _attack = 2 + arc4random_uniform(3);
            _defense = 0 + arc4random_uniform(2);
            _action = 5;
            _class = @"Rogue";
            _weapon = @"Trusty Daggers";
        }
    }
}

- (NSString *)description
{
    return @"I am a Character with a playername";
}



@end
