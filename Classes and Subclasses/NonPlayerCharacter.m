//
//  NonPlayerCharacter.m
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "NonPlayerCharacter.h"
#include <limits.h>


@implementation NonPlayerCharacter



- (instancetype)initWithSpecies:(NSString *)species
                      AILevel:(NSInteger)AILevel
{
    self = [super initWithSpecies:species];
    if (self)
    {
        _AILevel = AILevel;
    }
    return self;
}

- (instancetype)initWithSpecies:(NSString *)species
{
    return [self initWithSpecies:species AILevel:(INT_MIN)];
}

- (NSInteger)AILevel {
    return _AILevel;
}

-(void)setAILevel:(NSInteger)AILevel
{
    _AILevel = AILevel;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"I am a %@ and my AI Level is %@.", _species, @(_AILevel)];
}



@end
