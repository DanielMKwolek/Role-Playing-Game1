//
//  main.m
//  Classes and Subclasses
//
//  Created by Daniel Kwolek on 8/17/16.
//  Copyright © 2016 Arcore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "NonPlayerCharacter.h"
#import "PlayerCharacter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PlayerCharacter *TestCharacter = [[PlayerCharacter alloc] initWithSpecies:@"Human" Playername:@"Danny"];
        NonPlayerCharacter *TestNPC = [[NonPlayerCharacter alloc] initWithSpecies:@"Robot" AILevel:9001];
        
        NSLog(@"Hello, %@", TestCharacter);
        
        NSLog(@"Hello, %@", TestNPC);
        
        [TestCharacter setPlayerName:@"Not Danny"];
        [TestCharacter setSpecies:@"Not Human"];
        
        [TestNPC setSpecies:@"Not Robot"];
        [TestNPC setAILevel:9002];
        
        NSLog(@"Hello. Now, %@", TestCharacter);
        NSLog(@"Hello. Now, %@", TestNPC);
        
    }
    return 0;
}
