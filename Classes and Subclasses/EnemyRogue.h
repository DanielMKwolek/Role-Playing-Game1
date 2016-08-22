//
//  Enemy.h
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NonPlayerCharacter.h"

@interface EnemyRogue : NonPlayerCharacter
{
    NSInteger _health;
    NSInteger _speed;
    NSInteger _defense;
    NSInteger _action;
    NSInteger _attack;
}

- (instancetype)initWithSpecies:(NSString *)species
                        AILevel:(NSInteger)AILevel NS_DESIGNATED_INITIALIZER;

@property (readonly, nonatomic)NSInteger BaseAttack;
@property (readonly, nonatomic)NSInteger BaseSpeed;
@property (readonly, nonatomic)NSInteger BaseDefense;
@property (readonly, nonatomic)NSInteger BaseHealthPoints;
@property (readonly, nonatomic)NSInteger BaseActionPoints;

- (NSInteger)health;
- (NSInteger)speed;
- (NSInteger)actionp;
- (NSInteger)defense;
- (NSInteger)attack;

- (void)NSLogClassStats;

- (void)takeDamage:(NSInteger)damage;
@end
