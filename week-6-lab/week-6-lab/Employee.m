//
//  Employee.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "Employee.h"

@implementation Employee

//NSNumber *_employeeNumber;
//NSNumber *_yearsEmployed;
//NSString *_managerName;
//NSString *_email;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                     managerName:(NSString *)managerName
                        andEmail:(NSString *)email{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    if(self){
        _yearsEmployed = yearsEmployed;
        _managerName = managerName;
        _email = email;
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
    [aCoder encodeObject:self.email forKey:@"email"];
}

//-(NSNumber *)employeeNumber{
//    return _employeeNumber;
//}
//-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
//    _employeeNumber = employeeNumber;
//}
//
//-(NSNumber *)yearsEmployed{
//    return _yearsEmployed;
//}
//-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
//    _yearsEmployed = yearsEmployed;
//}
//
//-(NSString *)managerName{
//    return _managerName;
//}
//-(void)setManagerName:(NSString *)managerName{
//    _managerName = managerName;
//}
//
//-(NSString *)email{
//    return _email;
//}
//-(void)setEmail:(NSString *)email{
//    _email = email;
//}


-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
}

@end
