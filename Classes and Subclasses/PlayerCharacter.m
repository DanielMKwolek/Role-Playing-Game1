//
//  PlayerCharacter.m
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "PlayerCharacter.h"

@implementation PlayerCharacter


- (instancetype)initWithSpecies:(NSString *)species
                     Playername:(NSString *)Playername
{
    self = [super initWithSpecies:species];
    if (self)
    {
        _playername = Playername;
    }
    return self;
}

- (instancetype)initWithSpecies:(NSString *)species
{
    return [self initWithSpecies:species Playername:@"Nameless"];
}

- (NSString *)Playername {
    return _playername;
}

- (void)setPlayerName:(NSString *)playername
{
    _playername = playername;
}

- (NSString *)description
{
    return @"I am a Character with a playername";
}



@end
