//
//  Person.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "Person.h"

@implementation Person


-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                          andAge:(NSNumber *)age{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _age = age;
    }
    return self;
}


-(id)copyWithZone:(NSZone *)zone{
    Person *person = [[[self class]alloc]init];
    
    person.firstName = self.firstName; //dot syntax for properties, not methods
    person.lastName = self.lastName;
    person.age = self.age;
//    [person setFirstName:[self firstName]]; same as above
    return person;
}

@end

