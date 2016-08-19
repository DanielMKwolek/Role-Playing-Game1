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
#import "Knight.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Character *TestCharacter = [[Character alloc] initWithSpecies:@"Explicitly Unknown Species"];
        //PlayerCharacter *TestPlayerCharacter = [[PlayerCharacter alloc] initWithSpecies:@"Human" Playername:@"Danny"];
        //NonPlayerCharacter *TestNPC = [[NonPlayerCharacter alloc] initWithSpecies:@"Robot" AILevel:9001];
        Knight *TestKnight = [[Knight alloc] initWithSpecies:@"Draconian" Playername:@"Aliore"];
        /*
        
        NSLog(@"TestCharacter: Hello, %@ of %@", TestCharacter, [TestCharacter species]);
        NSLog(@"TestPlayerCharacter: Hello, %@ of %@ and am a(n) %@", TestPlayerCharacter, [TestPlayerCharacter Playername], [TestPlayerCharacter species]);
        NSLog(@"TestNPC: Hello, %@ of %@ and am a(n) %@", TestNPC, @([TestNPC AILevel]), [TestNPC species]);
        NSLog(@"TestKnight: Hello, %@ and am a(n) %@ and a Playername of %@\n\n", TestKnight, [TestKnight species], [TestKnight Playername]);
        
        [TestCharacter setSpecies:@"Explicit Known Species"];
        
        [TestPlayerCharacter setPlayerName:@"Not Danny"];
        [TestPlayerCharacter setSpecies:@"Not Human"];
        
        [TestNPC setSpecies:@"Not Robot"];
        [TestNPC setAILevel:9002];
        
        [TestKnight setPlayerName:@"Not Aliore"];
        [TestKnight setSpecies:@"Not Draconian"];
        
        NSLog(@"TestCharacter: Hello. Now, %@ of %@", TestCharacter, [TestCharacter species]);
        NSLog(@"TestPlayerCharacter: Hello. Now, %@ of %@ and am a(n) %@", TestPlayerCharacter, [TestPlayerCharacter Playername], [TestPlayerCharacter species]);
        NSLog(@"TestNPC: Hello. Now, %@ of %@ and am a(n) %@", TestNPC, @([TestNPC AILevel]), [TestNPC species]);
        NSLog(@"TestKnight: Hello. Now, %@ and am a(n) %@ and a Playername of %@\n\n", TestKnight, [TestKnight species], [TestKnight Playername]); */
        [TestKnight NSLogClassStats];
        
        NSLog(@"Knight Health: %@", @([TestKnight health]));
        [TestKnight takeDamage:4];
        NSLog(@"new knight health: %@", @([TestKnight health]));
        
        
    }
    return 0;
}
