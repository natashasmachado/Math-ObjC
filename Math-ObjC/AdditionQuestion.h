//
//  AdditionQuestion.h
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-01.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (instancetype)init;
- (NSTimeInterval)answerTime;

@end
