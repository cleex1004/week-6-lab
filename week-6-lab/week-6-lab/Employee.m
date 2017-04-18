//
//  Employee.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName Age:(NSNumber *)age yearsEmployed:(NSNumber *)yearsEmployed andManagerName:(NSString *)managerName{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    if(self){
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
    }
    return self;
}


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

-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

@end
