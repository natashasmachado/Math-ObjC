//
//  QuestionManager.h
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-04.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;

- (void)addQuestion:(Question *)question;
- (NSString *)timeOutput;

@end
