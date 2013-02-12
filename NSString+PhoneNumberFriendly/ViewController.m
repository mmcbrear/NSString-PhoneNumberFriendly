//
//  ViewController.m
//  NSString+PhoneNumberFriendly
//
//  Created by Martin McBrearty on 12/02/2013.
//  Copyright (c) 2013 Myello Digital Ltd. All rights reserved.
//

#import "ViewController.h"
#import "NSString+PhoneNumberFriendly.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *number1 = @"+44 07777-777-7777";
    NSString *number2 = @"+44 07777 777777 HOME";
    NSString *number3 = @"+00 44 07777 777 7777 HOME, work !@£$%^&*(){}[]\"/\\:;?.><~|'`";
    
    self.button1.titleLabel.font = [UIFont systemFontOfSize:9];
    self.button2.titleLabel.font = [UIFont systemFontOfSize:9];
    self.button3.titleLabel.font = [UIFont systemFontOfSize:9];
    
    [self.button1 setTitle:number1 forState:UIControlStateNormal];
    [self.button2 setTitle:number2 forState:UIControlStateNormal];
    [self.button3 setTitle:number3 forState:UIControlStateNormal];
}

- (IBAction)onButtonTouch:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    NSString *phoneNumber = [@"tel://" stringByAppendingString:[btn.titleLabel.text phoneAppFriendlyNumber]];
    
    NSLog(@"phoneNumber: %@",phoneNumber);
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
}

@end
