//
//  QuestionFactory.h
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-04.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

- (Question *)generateRandomQuestion;

@end
