//
//  NSString+Utilities.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "NSString+Utilities.h"

@implementation NSString (Utilities)

-(NSArray *)selfArray: (NSString *)string{
    NSArray* stringArray = [string componentsSeparatedByString:@" "];
    return stringArray;
}

+(NSString *)reverseString: (NSString *)string{
    NSMutableString* reversed = [NSMutableString stringWithCapacity:string.length];
    
    for (int i = (int)string.length-1; i>= 0; i--){
        [reversed appendFormat:@"%c", [string characterAtIndex:i]];
    }
    return reversed;
}


@end





