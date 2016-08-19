//
//  Rogue.m
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "Rogue.h"

@implementation Rogue

- (instancetype)initWithSpecies:(NSString *)species
                     Playername:(NSString *)Playername
{
    self = [super initWithSpecies:species
                       Playername:Playername];
    if (self)
    {
        _BaseSpeed = 9;
        _BaseAttack = 3;
        _BaseDefense = 0;
        _BaseHealthPoints = 14;
        _BaseActionPoints = 5;
        _health = (_BaseHealthPoints - 2) + arc4random_uniform(5);
        _speed = (_BaseSpeed  - 2) + arc4random_uniform(5);
        _attack = (_BaseAttack  - 1) + arc4random_uniform(3);
        _defense = _BaseDefense + arc4random_uniform(2);
        _action = _BaseActionPoints;
    }
    return self;
}

- (void)NSLogClassStats
{
    NSArray *totalstats = @[
                            @"Base Speed",
                            @(_BaseSpeed),
                            @"-1 + rand(0..2)",
                            @"Base ActionPoints",
                            @(_BaseActionPoints),
                            @"Base HealthPoints",
                            @(_BaseHealthPoints),
                            @"-2 + rand(0..4)",
                            @"Base Defense",
                            @(_BaseDefense),
                            @" + rand(0..1)",
                            @"Base Attack",
                            @(_BaseAttack),
                            @"-1 + rand(0..2)"
                            ];
    NSLog(@"%@", totalstats);
}

- (void)takeDamage:(NSInteger)damage
{
    NSInteger damagetaken = (MAX((damage-_defense),0));
    NSLog(@"Damage taken = %@", @(damagetaken));
    _health -= damagetaken;
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
@end
