//
//  ViewController.h
//  Uni Zawgyi Converter
//
//  Created by Htain Lin Shwe on 15/1/15.
//  Copyright (c) 2015 comquas. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (unsafe_unretained) IBOutlet NSTextView *zawgyiTextView;
@property (unsafe_unretained) IBOutlet NSTextView *uniTextView;


- (IBAction)zawgyiToUni:(id)sender;
- (IBAction)UniToZawgyi:(id)sender;

@end

