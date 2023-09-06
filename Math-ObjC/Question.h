//
//  Question.h
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-05.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

- (NSTimeInterval)timeToAnswer;
- (void)generateQuestion;

@end
