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
        Character *TestCharacter = [[Character alloc] initWithSpecies:@"Explicit Unknown species"];
        PlayerCharacter *TestPlayerCharacter = [[PlayerCharacter alloc] initWithSpecies:@"Human" Playername:@"Danny"];
        NonPlayerCharacter *TestNPC = [[NonPlayerCharacter alloc] initWithSpecies:@"Robot" AILevel:9001];
        
        NSLog(@"TestCharacter: Hello, %@", TestCharacter);
        NSLog(@"TestPlayerCharacter: Hello, %@", TestPlayerCharacter);
        NSLog(@"TestNPC: Hello, %@", TestNPC);
        
        [TestCharacter setSpecies:@"Explicit Known species"];
        
        [TestPlayerCharacter setPlayerName:@"Not Danny"];
        [TestPlayerCharacter setSpecies:@"Not Human"];
        
        [TestNPC setSpecies:@"Not Robot"];
        [TestNPC setAILevel:9002];
        
        NSLog(@"TestCharacter: Hello. Now, %@", TestCharacter);
        NSLog(@"TestPlayerCharacter: Hello. Now, %@", TestPlayerCharacter);
        NSLog(@"TestNPC: Hello. Now, %@", TestNPC);
        
    }
    return 0;
}
