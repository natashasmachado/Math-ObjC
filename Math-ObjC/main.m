//
//  main.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-01.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "AdditionQuestion.h" // Import the AdditionQuestion class

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputHandler *inputHandler = [[InputHandler alloc] init];
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        BOOL gameOn = YES;
        while (gameOn) {
            AdditionQuestion *question = [[AdditionQuestion alloc] init];
            NSLog(@"%@", question.question);

            // Get user input
            NSString *userInput = [inputHandler getUserInput];
            if ([userInput isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            NSInteger userAnswer = [userInput intValue];

            // Compare userAnswer to question.answer
            if (userAnswer == question.answer) {
                NSLog(@"Right!");
                scoreKeeper.correctAnswers++;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrongAnswers++;
            }
            
            NSLog(@"%@", [scoreKeeper scoreString]);
        }
    }
    return 0;
}
