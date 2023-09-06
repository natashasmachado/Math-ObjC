//
//  Question.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-05.
//

#import "Question.h"

@implementation Question

- (instancetype)init {
    if (self = [super init]) {
        _rightValue = arc4random_uniform(91) + 10;
        _leftValue = arc4random_uniform(91) + 10;
        [self generateQuestion];
    }
    return self;
}

- (NSTimeInterval)timeToAnswer {
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

- (void)generateQuestion {
}

@end
