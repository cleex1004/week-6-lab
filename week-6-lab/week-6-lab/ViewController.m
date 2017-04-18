//
//  ViewController.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Utilities.h"

@interface ViewController ()


@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSString *testString = @"This is the test string";
    
    NSArray *testArray = [self selfArray:@"This is the test string"];
    NSLog(@"%@", testArray);
    NSString *output = [self reverseString:@"This is the test string"];
    NSLog(@"%@", output);
}

//NSString *outputString;
//outputString = [NSString reversed:@"Work Please"];
//NSLog(@"%@", outputString);


@end
