//
//  AdditionQuestion.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-05.
//

// AdditionQuestion.m
#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {
        // Generate two random numbers between 10 and 100
        NSInteger num1 = arc4random_uniform(91) + 10;
        NSInteger num2 = arc4random_uniform(91) + 10;

        // Calculate the answer
        _answer = num1 + num2;

        // Create the question string
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", (long)num1, (long)num2];
    }
    return self;
}

@end


