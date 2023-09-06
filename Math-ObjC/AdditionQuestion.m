//
//  AdditionQuestion.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-01.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype)init {
    if (self = [super init]) {
        _startTime = [NSDate date];
        NSInteger num1 = arc4random_uniform(91) + 10;
        NSInteger num2 = arc4random_uniform(91) + 10;

        _answer = num1 + num2;
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", (long)num1, (long)num2];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    if (self.startTime && self.endTime) {
        return [self.endTime timeIntervalSinceDate:self.startTime];
    } else {
        return 0; 
    }
}

@end
