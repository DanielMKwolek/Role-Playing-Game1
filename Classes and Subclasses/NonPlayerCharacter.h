//
//  NonPlayerCharacter.h
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface NonPlayerCharacter: Character
{
    NSInteger _AILevel;
}



- (instancetype)initWithSpecies:(NSString *)species
                      AILevel:(NSInteger)AILevel NS_DESIGNATED_INITIALIZER;

- (NSInteger)AILevel;
- (void)setAILevel:(NSInteger)AILevel;
@end
