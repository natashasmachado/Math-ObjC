//
//  ScoreKeeper.h
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-02.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger correctCount;
@property (nonatomic, assign) NSInteger wrongCount;

- (void)incrementCorrect;
- (void)incrementWrong;

@end
