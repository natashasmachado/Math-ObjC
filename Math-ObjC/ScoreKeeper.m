//
//  ScoreKeeper.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-02.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init {
    if (self = [super init]) {
        _correctCount = 0;
        _wrongCount = 0;
    }
    return self;
}

- (void)incrementCorrect {
    self.correctCount++;
}

- (void)incrementWrong {
    self.wrongCount++;
}

@end
