//
//  parabaik.h
//  Uni Zawgyi Converter
//
//  Created by Htain Lin Shwe on 15/1/15.
//  Copyright (c) 2015 comquas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface parabaik : NSObject

+ (NSString *)zawgyiToUni:(NSString *)string;
+ (NSString *)uniToZawgyi:(NSString *)string;

@end
