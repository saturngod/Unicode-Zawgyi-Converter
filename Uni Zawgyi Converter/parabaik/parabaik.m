//
//  parabaik.m
//  Uni Zawgyi Converter
//
//  Created by Htain Lin Shwe on 15/1/15.
//  Copyright (c) 2015 comquas. All rights reserved.
//

#import "parabaik.h"
#import <JavaScriptCore/JavaScriptCore.h>
@implementation parabaik


+ (NSString *)zawgyiToUni:(NSString *)string {
  
  
  JSContext *context = [JSContext new];
  
  NSString *filePath = [[NSBundle mainBundle] pathForResource:@"zg12uni51" ofType:@"js"];
  
  // defining a JavaScript function
  NSString *jsFunctionText = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
  
  [context evaluateScript:jsFunctionText];
  
  // calling a JavaScript function
  JSValue *jsFunction = context[@"Z1_Uni"];
  JSValue *value = [jsFunction callWithArguments:@[string]];
  
  return [value toString];
  
  
}
+ (NSString *)uniToZawgyi:(NSString *)string {

  JSContext *context = [JSContext new];
  
  NSString *filePath = [[NSBundle mainBundle] pathForResource:@"uni512zg1" ofType:@"js"];
  
  // defining a JavaScript function
  NSString *jsFunctionText = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
  
  [context evaluateScript:jsFunctionText];
  
  // calling a JavaScript function
  JSValue *jsFunction = context[@"Uni_Z1"];
  JSValue *value = [jsFunction callWithArguments:@[string]];
  
  return [value toString];
  
}
@end
