//
//  Employee.h
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Employee : Person <NSCopying>

-(NSNumber *)employeeNumber;
-(void)setEmployeeNumber:(NSNumber *)employeeNumber;

-(NSNumber *)yearsEmployed;
-(void)setYearsEmployed:(NSNumber *)yearsEmployed;

-(NSString *)managerName;
-(void)setManagerName:(NSString *)managerName;

-(NSString *)email;
-(void)setEmail:(NSString *)email;

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName Age:(NSNumber *)age yearsEmployed:(NSNumber *)yearsEmployed managerName:(NSString *)managerName andEmail:(NSString *)email;

@end
