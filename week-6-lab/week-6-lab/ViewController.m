//
//  ViewController.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Utilities.h"
#import "EmployeeDatabase.h"
#import "Employee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Employee *original = [[Employee alloc] initWithFirstName:@"Adam" lastName:@"Wallraff" Age:@30 yearsEmployed:@2 managerName:@"Brook" andEmail:@"adam@codefellows.com"];
    
    Employee *newInstructor = [original copy];
    
    newInstructor.firstName = @"Mike";
    
    NSLog(@"%@", original.firstName);
    
//    NSInteger *employeeCount = [[EmployeeDatabase shared]count];
//    NSLog(@"%@", employeeCount);
//    
    NSString *testString = @"This is the test string";
    
    NSArray *testArray;
    testArray = [testString selfArray:testString];
    NSLog(@"%@", testArray);
    NSString *output;
    output = [NSString reverseString:@"This is the test string"];
    NSLog(@"%@", output);
}

@end
