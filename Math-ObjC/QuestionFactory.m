//
//  QuestionFactory.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-06.
//

#import "QuestionFactory.h"
#import "AdditionQuestion.h"

@implementation QuestionFactory

- (Question *)generateRandomQuestion {
    NSArray *questionClassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    NSInteger randomIndex = arc4random_uniform((uint32_t)[questionClassNames count]);
    NSString *randomClassName = questionClassNames[randomIndex];
    
    Class questionClass = NSClassFromString(randomClassName);
    
    if (questionClass && [questionClass isSubclassOfClass:[Question class]]) {
        return [[questionClass alloc] init];
    } else {
        return [[AdditionQuestion alloc] init];
    }
}

@end
