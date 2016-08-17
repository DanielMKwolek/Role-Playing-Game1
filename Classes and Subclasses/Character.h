//
//  Character.h
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject
{
    NSString *_species;
}

- (instancetype)initWithSpecies:(NSString *)species NS_DESIGNATED_INITIALIZER;
- (NSString *)species;
- (void)setSpecies:(NSString *)species;



@end
