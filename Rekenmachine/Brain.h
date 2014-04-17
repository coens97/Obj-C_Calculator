//
//  Brain.h
//  Rekenmachine
//
//  Created by Coen on 15/04/14.
//  Copyright (c) 2014 Coen. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum Operator : NSUInteger {
    None,
    Add,
    Min,
    Times,
    Devided
} Operator;

@interface Brain : NSObject

@property double display;
@property double secondDisplay;
@property int pointPos;
@property Operator oper;

- (double) pressedNumber:(int)number;

- (void) pressedC;
- (void) pressedTimes;
- (void) pressedDevided;
- (void) pressedAdd;
- (void) pressedMin;
- (void) pressedPoint;
- (double) pressedEquals;
- (void) swapDisplay;
@end
