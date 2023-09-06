//
//  ScoreKeeper.h
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-02.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger correctAnswers;
@property (nonatomic, assign) NSInteger wrongAnswers;

- (NSString *)scoreString;

@end
