//
//  Character.m
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import "Character.h"

@implementation Character

- (instancetype)init
{
    return [self initWithSpecies:@"Unspecified Species"];
}

- (instancetype)initWithSpecies:(NSString *)species
{
    self = [super init];
    if (self)
    {
        _species = species;
    }
    return self;
}

-(NSString *)species
{
    return _species;
}


-(NSString *)description
{
    return _species;
}

- (void)setSpecies:(NSString *)species
{
    _species = species;
}

@end
