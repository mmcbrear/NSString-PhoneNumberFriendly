//
//  NSString_PhoneNumberFriendlyTests.m
//  NSString+PhoneNumberFriendlyTests
//
//  Created by Martin McBrearty on 12/02/2013.
//  Copyright (c) 2013 Myello Digital Ltd. All rights reserved.
//

#import "NSString_PhoneNumberFriendlyTests.h"
#import "NSString+PhoneNumberFriendly.h"

@implementation NSString_PhoneNumberFriendlyTests


- (void) testPhoneNumbersAreFriendly
{
    NSString *tel = @"+44 07777-777-7777";
    NSString *desc = @"Phone # is Apple Phone App friendly";
    
    STAssertTrue([[tel phoneAppFriendlyNumber] isEqualToString:@"44077777777777"], desc);
    
    tel = @"+44 07777 777777 HOME";
    STAssertTrue([[tel phoneAppFriendlyNumber] isEqualToString:@"4407777777777"], desc);
    
    tel = @"+00 44 07777 777 7777 HOME, work !@£$%^&*(){}[]\"/\\:;?.><~|'`";
    STAssertTrue([[tel phoneAppFriendlyNumber] isEqualToString:@"0044077777777777"], desc);
    
    tel = @"077777777777";
    STAssertTrue([[tel phoneAppFriendlyNumber] isEqualToString:@"077777777777"], desc);
}

@end
