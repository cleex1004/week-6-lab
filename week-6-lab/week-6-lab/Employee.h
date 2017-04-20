//
//  Employee.h
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Employee : Person <NSCopying, NSCoding>

@property (strong, nonatomic) NSNumber *employeeNumber;
@property (strong, nonatomic) NSNumber *yearsEmployed;
@property (strong, nonatomic) NSString *managerName;
@property (strong, nonatomic) NSString *email;


-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName age:(NSNumber *)age yearsEmployed:(NSNumber *)yearsEmployed managerName:(NSString *)managerName andEmail:(NSString *)email;

@end
