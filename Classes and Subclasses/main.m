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
#import "EnemyRogue.h"

void sleeps(int sleeptime);
int getIntFromUser(int minnum, int maxnum);
int promptUserForInt(int minnum, int maxnum, char *prompt);
char getCharFromUser(void);
char promptUserForChar(char *prompt);
void promptUserForString(char *prompt, char *stringaddress);
enum playerClassInt{
    knight = 1,
    mage,
    rogue,
    voidclassint = INT_MIN,
    classmin = 1,
    classmax = 3
};
int minirpg(void);
void stringcopy(char *destination, char *source);
void battleBetween(PlayerCharacter *one, EnemyRogue *two);

int main(int argc, const char * argv[])
{
    int exitcode = 0;
    @autoreleasepool
    {
        do
        {
            exitcode = minirpg();
        }while (exitcode == 1);
    }
    return exitcode;
}



int minirpg(void)
{
    
    /*Character *TestCharacter = [[Character alloc] initWithSpecies:@"Explicitly Unknown Species"];
     PlayerCharacter *TestPlayerCharacter = [[PlayerCharacter alloc] initWithSpecies:@"Human" Playername:@"Danny"];
     NonPlayerCharacter *TestNPC = [[NonPlayerCharacter alloc] initWithSpecies:@"Robot" AILevel:9001];
     Knight *TestKnight = [[Knight alloc] initWithSpecies:@"Draconian" Playername:@"Aliore"];
     
     
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
     NSLog(@"TestKnight: Hello. Now, %@ and am a(n) %@ and a Playername of %@\n\n", TestKnight, [TestKnight species], [TestKnight Playername]);
     [TestKnight NSLogClassStats];
     
     NSLog(@"Knight Health: %@", @([TestKnight health]));
     [TestKnight takeDamage:4];
     NSLog(@"new knight health: %@", @([TestKnight health]));
     */
    
    printf("It is the year 1426 is the land of Fellreign. Over the past year darkness has begun to consume the land and great beasts have arisen from the dark reccesses of the Fey Caverns. There is little known of these creatures other than the fact that they have a taste for blood and that they let neither death nor pain hinder their pursuit of destruction. But alas, you needn't concern yourself with these details, because you are just a level 1 noob with no hopes or aspirations. How sad.\n");
    //sleeps(12);
    
    printf("Whelp\n");
    sleeps(11);
    printf("At least you get to choose what class you want to be in some vain attempt at thinking you have any free will in this meaningless endeavor!\n\n");
    
    printf("What species are you?\n: ");
    char UserInputStringOne[21];
    UserInputStringOne[20] = '\0';
    fpurge(stdin);
    scanf("%20s", UserInputStringOne);
    printf("Your species is now: %s\n", UserInputStringOne);
    printf("What is your name?\n: ");
    
    char UserInputStringTwo[21];
    UserInputStringOne[20] = '\0';
    fpurge(stdin);
    scanf("%20s", UserInputStringTwo);
    printf("Your name is now: %s\n", UserInputStringTwo);
    int UserIntChoice = promptUserForInt(classmin, classmax, "What class would you like to be?\nKnight: 1\nMage: 2\nRogue: 3\n");
    printf("You chose %d\n\n", UserIntChoice);
    PlayerCharacter *Player = [[PlayerCharacter alloc]initWithSpecies:@(UserInputStringOne) Playername:@(UserInputStringTwo)];
    switch(UserIntChoice)
    {
        case(knight):
        {
            printf("You chose knight!\n");
            [Player setclass:knight];
            break;
        }
        case(mage):
        {
            printf("You chose mage!\n");
            [Player setclass:mage];
            break;
        }
        case(rogue):
        {
            printf("You chose rogue!\n");
            [Player setclass:rogue];
            break;
        }
    }
    [Player playerstats];
    sleeps(7);
    NSLog(@"\n\n\nYou are wandering through a forest contemplating your life when out of now where a dragon swoops down!\nYou ready your %@ all the while mentally preparing for this epic battle.", [Player weapon]);
    sleeps(6);
    printf("The dragon promptly ignores you and flies onward, although some of its caustic spit managed to fall on a nearby tree\n");
    sleeps(2);
    printf("Oh No! That isn't just spit! \nIt is a spit covered rogue!\nTis a good thing indeed that you prepared your weapons!");
    sleeps(5);
    EnemyRogue *enemyone = [[EnemyRogue alloc] initWithSpecies:@"Human" AILevel:4];
    battleBetween(Player, enemyone);
    return promptUserForInt(0, 1, "\nWould you like to play again?\nNo: 0\nYes: 1\n");
}



void battleBetween(PlayerCharacter *fightee, EnemyRogue *enemy)
{
    while(([fightee health] > 0) && ([enemy health] > 0))
    {
        if ([fightee speed] > [enemy speed])
        {
            [enemy takeDamage:[fightee attack]];
            NSLog(@"Your health: %@\nEnemy health: %@", @([fightee health]), @([enemy health]));
            sleeps(2);
            if ([enemy health] <= 0)
            {
                printf("Congratulations! You've defeated the enemy!");
            }else
            {
                [fightee takeDamage:[enemy attack]];
                NSLog(@"Your health: %@\nEnemy health: %@", @([fightee health]), @([enemy health]));
                sleeps(2);
                if ([fightee health] <= 0)
                {
                    printf("Oh No! You ded!\n\n");
                }
            }
        }else
        {
            [fightee takeDamage:[enemy attack]];
            NSLog(@"Your health: %@\nEnemy health: %@", @([fightee health]), @([enemy health]));
            sleeps(2);
            if ([fightee health] <= 0)
            {
                printf("Oh No! You ded!\n\n");
            }else
            {
                [enemy takeDamage:[fightee attack]];
                NSLog(@"Your health: %@\nEnemy health: %@", @([fightee health]), @([enemy health]));
                sleeps(2);
                if ([enemy health] <= 0)
                {
                    printf("Congratulations! You've defeated the enemy!");
                }
            }
        }
    }
}







void sleeps(int sleeptime)
{
    fflush(stdout);
    sleep(sleeptime);
}

int getIntFromUser(int minnum, int maxnum)
{
    int answer = INT_MIN;
    do
    {
        fpurge(stdin);
        printf("Valid choices %d...%d", minnum, maxnum);
        scanf("%d", &answer);
    } while (answer > maxnum || answer < minnum);
    return answer;
}

int promptUserForInt(int minnum, int maxnum, char *prompt)
{
    int answer = INT_MIN;
    printf("%s", prompt);
    do
    {
        printf("Valid choices %d...%d\nEnter %d for prompt\n: ", minnum, maxnum, (maxnum+1));
        fpurge(stdin);
        scanf("%d", &answer);
        if (answer == (maxnum + 1))
        {
            printf("%s", prompt);
        }
    
    } while (answer > maxnum || answer < minnum);
    return answer;
}
