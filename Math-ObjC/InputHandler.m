//
//  InputHandler.m
//  Math-ObjC
//
//  Created by Natasha Machado on 2023-09-02.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)getUserInput {
    char input[255];
    fgets(input, 255, stdin);
    NSString *userInput = [[NSString stringWithCString:input encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userInput;
}

@end
