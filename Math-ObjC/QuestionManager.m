//
//  QuestionManager.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-04.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init {
    if (self = [super init]) {
        _questions = [NSMutableArray array];
    }
    return self;
}

- (void)addQuestion:(Question *)question {
    [self.questions addObject:question];
}

- (NSString *)timeOutput {
    NSInteger totalTime = 0;
    for (Question *question in self.questions) {
        totalTime += [question timeToAnswer];
    }
    
    NSInteger questionCount = [self.questions count];
    if (questionCount > 0) {
        NSInteger averageTime = totalTime / questionCount;
        return [NSString stringWithFormat:@"total time: %lis, average time: %lis", totalTime, averageTime];
    } else {
        return @"No questions asked yet.";
    }
}

@end

