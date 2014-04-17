//
//  AppDelegate.m
//  Rekenmachine
//
//  Created by Coen on 15/04/14.
//  Copyright (c) 2014 Coen. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    _brain = [Brain new];
}

- (IBAction)pressedNumber:(NSButton*)sender
{
    [self displayField].doubleValue = [_brain pressedNumber:[sender.title integerValue]];
}


- (IBAction)pressedOperator:(NSButton*)sender
{
    switch ([sender.title characterAtIndex:0]) {//Use the first character of the title to select the operator
        case '.':
            [_brain pressedPoint];
            break;
        case '+':
            [_brain pressedAdd];
            break;
        case '-':
            [_brain pressedMin];
            break;
        case '*':
            [_brain pressedTimes];
            break;
        case '/':
            [_brain pressedDevided];
            break;
        case '=':
            [self displayField].doubleValue = [_brain pressedEquals];
            break;
        case 'C':
            [_brain pressedC];
            [self displayField].integerValue = 0;
            break;
        default:
            NSLog(@"Operator not found");
            break;
    }
}
@end
