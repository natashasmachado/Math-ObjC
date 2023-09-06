//
//  AdditionQuestion.h
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-05.
//

#// AdditionQuestion.h
#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger answer;

- (instancetype)init;

@end
