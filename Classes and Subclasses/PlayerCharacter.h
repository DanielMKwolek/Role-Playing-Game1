//
//  PlayerCharacter.h
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface PlayerCharacter: Character
{
    NSString *_playername;
    NSString *_class;
    NSInteger _health;
    NSInteger _speed;
    NSInteger _defense;
    NSInteger _action;
    NSInteger _attack;
}

- (instancetype)initWithSpecies:(NSString *)species
                     Playername:(NSString *)Playername NS_DESIGNATED_INITIALIZER;

- (NSInteger)health;
- (NSInteger)speed;
- (NSInteger)actionp;
- (NSInteger)defense;
- (NSInteger)attack;

- (NSString *)playername;
- (void)setPlayerName:(NSString *)playername;

- (void)setclass:(int)classvalue;

- (NSString *)characterclass;


@end
