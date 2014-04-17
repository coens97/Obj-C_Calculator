//
//  AppDelegate.h
//  Rekenmachine
//
//  Created by Coen on 15/04/14.
//  Copyright (c) 2014 Coen. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Brain.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
//IBOutlet
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *displayField;
//IBAction
- (IBAction) pressedNumber:(NSButton*)sender;
- (IBAction) pressedOperator:(NSButton*)sender;
//Propertys
@property Brain *brain;
@end
