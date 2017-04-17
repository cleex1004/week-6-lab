//
//  Employee.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "Employee.h"
#import "Person.h"

@implementation Employee : Person

NSNumber *_employeeNumber;
NSNumber *_yearsEmployed;
NSString *_managerName;

-(NSNumber *)employeeNumber{
    return _employeeNumber;
}
-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
    _employeeNumber = employeeNumber;
}


-(NSNumber *)yearsEmployed{
    return _yearsEmployed;
}
-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
    _yearsEmployed = yearsEmployed;
}


-(NSString *)managerName{
    return _managerName;
}
-(void)setManagerName:(NSString *)managerName{
    _managerName = managerName;
}

@end
