//
//  QuestionFactory.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-06.
//

#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"

@implementation QuestionFactory

- (instancetype)init {
    self = [super init];
    if (self) {
       
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion {
    
    NSUInteger randomIndex = arc4random_uniform((uint32_t)self.questionSubclassNames.count);
    
    
    NSString *className = self.questionSubclassNames[randomIndex];
    Class questionClass = NSClassFromString(className);
    Question *question = [[questionClass alloc] init];
    
    return question;
}

@end
