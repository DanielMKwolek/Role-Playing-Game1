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
}

- (instancetype)initWithSpecies:(NSString *)species
                     Playername:(NSString *)Playername NS_DESIGNATED_INITIALIZER;

- (NSString *)Playername;
- (void)setPlayerName:(NSString *)playername;

@end
