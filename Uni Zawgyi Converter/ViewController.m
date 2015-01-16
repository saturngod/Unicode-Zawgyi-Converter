//
//  ViewController.m
//  Uni Zawgyi Converter
//
//  Created by Htain Lin Shwe on 15/1/15.
//  Copyright (c) 2015 comquas. All rights reserved.
//

#import "ViewController.h"
#import "parabaik.h"

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];

  [self.uniTextView setFont:[NSFont fontWithName:@"MON3 Anonta 1" size:14]];
  [self.zawgyiTextView setFont:[NSFont fontWithName:@"Zawgyi-One" size:14]];
  // Do any additional setup after loading the view.
}



- (void)setRepresentedObject:(id)representedObject {
  [super setRepresentedObject:representedObject];

  // Update the view, if already loaded.
}


- (void)zawgyiToUni:(id)sender {
  
  [self.uniTextView setString:[parabaik zawgyiToUni:[self.zawgyiTextView string]]];
  
}

- (void)UniToZawgyi:(id)sender {

    [self.zawgyiTextView setString:[parabaik uniToZawgyi:[self.uniTextView string]]];
}

@end
