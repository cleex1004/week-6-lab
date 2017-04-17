//
//  Employee.h
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Employee : Person

@property (strong, nonatomic) NSNumber *employeeNumber;

@property (strong, nonatomic) NSNumber *yearsEmployed;

@property (strong, nonatomic) NSString *managerName;

//-(NSNumber *)employeeNumber;
//-(void)setEmployeeNumber:(NSNumber *)employeeNumber;
//
//-(NSNumber *)yearsEmployed;
//-(void)setYearsEmployed:(NSNumber *)yearsEmployed;
//
//-(NSString *)managerName;
//-(void)setManagerName:(NSString *)managerName;


@end
