//
//  main.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-01.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        InputHandler *inputHandler = [[InputHandler alloc] init];
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];

        while (gameOn) {
            Question *question = [questionFactory generateRandomQuestion];
            [questionManager addQuestion:question];
            NSLog(@"%@", question.question);

            NSString *userInput = [inputHandler getUserInput];
            NSInteger userAnswer = [userInput intValue];

            if (userAnswer == question.answer) {
                NSLog(@"Right!");
                [scoreKeeper incrementCorrect];
            } else {
                NSLog(@"Wrong!");
                [scoreKeeper incrementWrong];
            }

            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
