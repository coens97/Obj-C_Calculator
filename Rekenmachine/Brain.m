//
//  Brain.m
//  Rekenmachine
//
//  Created by Coen on 15/04/14.
//  Copyright (c) 2014 Coen. All rights reserved.
//

#import "Brain.h"

@implementation Brain

- (id)init
{
    self = [super init];
    if (self)
    {
        [self pressedC];
    }
    return self;
}
/***
 * Add number to display
 ***/
- (double) pressedNumber:(int)number
{
    if(_pointPos == 1){
        _display = _display * 10 + number;
    }
    else
    {
        _pointPos--;
        _display += (double)(number * pow(10, _pointPos));
    }
    return _display;
}
/***
 * Clear variables
 ***/
- (void) pressedC
{
    _display = 0;
    _secondDisplay = 0;
    _pointPos = 1;
    _oper = None;
}
/***
 * When operator pressed remember the vale of the screen
 ***/
- (void) swapDisplay
{
    if(_display == 0){//Dont swap displays when display is zero, can change operator when mistaken
        return;
    }
    if(_secondDisplay != 0 && _oper != None){//When second display not empty do calculation first
        [self pressedEquals];
    }
    _secondDisplay = _display;
    _display = 0;
    _pointPos = 1;
}
/***
 * Set opperator when pressed key
 ***/
- (void) pressedTimes
{
    [self swapDisplay];
    _oper = Times;
}

- (void) pressedDevided
{
    [self swapDisplay];
    _oper = Devided;
}

- (void) pressedAdd
{
    [self swapDisplay];
    _oper = Add;
}

- (void) pressedMin
{
    [self swapDisplay];
    _oper = Min;
}

- (void) pressedPoint
{
    if(_pointPos == 1)
    {
        _pointPos = 0;
    }
}
/***
 * Calculate
 ***/
- (double) pressedEquals
{
    if(_oper != None){
        switch (_oper) {
            case Add:
                _display = _secondDisplay + _display;
                break;
            case Min:
                _display = _secondDisplay - _display;
                break;
            case Times:
                _display = _secondDisplay * _display;
                break;
            case Devided:
                _display = _secondDisplay / _display;
                break;
            default:
                break;
        }
        _secondDisplay = 0;
    }
    return _display;
}
@end
