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
        _correctAnswers = 0;
        _wrongAnswers = 0;
    }
    return self;
}

- (NSString *)scoreString {
    NSInteger totalQuestions = self.correctAnswers + self.wrongAnswers;
    NSInteger percentage = (totalQuestions > 0) ? (self.correctAnswers * 100 / totalQuestions) : 0;
    return [NSString stringWithFormat:@"score: %ld right, %ld wrong ---- %ld%%", (long)self.correctAnswers, (long)self.wrongAnswers, (long)percentage];
}

@end
