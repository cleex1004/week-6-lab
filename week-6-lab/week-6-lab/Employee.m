    //
//  Employee.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "Employee.h"

@implementation Employee

NSNumber *_employeeNumber;
NSNumber *_yearsEmployed;
NSString *_managerName;
NSString *_email;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                     managerName:(NSString *)managerName
                        andEmail:(NSString *)email{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age];
    if(self){
        
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        _yearsEmployed = [yearsEmployed retain];
        _managerName = [managerName retain];
        _email = [email retain];
        
    }
    return self;
}

-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
    if(_employeeNumber != employeeNumber){
        
        [employeeNumber retain];
        [_employeeNumber release];
        
        _employeeNumber = employeeNumber;
    }}
-(NSNumber *)employeeNumber{
    return _employeeNumber;
}

-(void)setYearsEmployed:(NSNumber *)yearsEmployed{
    if(_yearsEmployed != yearsEmployed){
        
        [yearsEmployed retain];
        [_yearsEmployed release];
        
        _yearsEmployed = yearsEmployed;
    }}
-(NSNumber *)yearsEmployed{
    return _yearsEmployed;
}

-(void)setManagerName:(NSString *)managerName{
    if(_managerName != managerName){
        
        [managerName retain];
        [_managerName release];
        
        _managerName = managerName;
    }}
-(NSString *)managerName{
    return _managerName;
}

-(void)setEmail:(NSString *)email{
    if(_email != email){
        
        [email retain];
        [_email release];
        
        _email = email;
    }
}
-(NSString *)email{
    return _email;
}

-(void)dealloc{
    [_employeeNumber release];
    [_yearsEmployed release];
    [_managerName release];
    [_email release];
    
    [super dealloc];
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


-(id)copyWithZone:(NSZone *)zone{
    Employee *employee = [super copyWithZone:zone];
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    employee.email = self.email;
    
    return employee;
}

@end

