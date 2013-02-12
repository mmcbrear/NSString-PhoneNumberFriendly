//
//  NSString+PhoneNumberFriendly.m
//  NSString+PhoneNumberFriendly
//
//  Created by Martin McBrearty on 12/02/2013.
//  Copyright (c) 2013 Myello Digital Ltd. All rights reserved.
//

#import "NSString+PhoneNumberFriendly.h"

@implementation NSString (PhoneNumberFriendly)

- (NSString*) phoneAppFriendlyNumber
{
    NSError *error = NULL;
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[A-Za-z]|[ \\-+,!@£$%^&*(){}\?.<>~`;:'|/\"\\[\\]\\\\]"
                                                                           options:NSRegularExpressionCaseInsensitive
                                                                             error:&error];
    
    if(!error)
        return [regex stringByReplacingMatchesInString:self options:0 range:NSMakeRange(0, [self length]) withTemplate:@""];
    
    return self;
}

@end
