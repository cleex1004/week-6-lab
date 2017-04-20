//
//  Person.m
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "Person.h"

@implementation Person

NSString *_firstName;
NSString *_lastName;
NSNumber *_age;

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

-(void)setFirstName:(NSString *)firstName{
    if(_firstName != firstName){
        
        [firstName retain];
        [_firstName release];
        
        _firstName = firstName;
    }
}
-(NSString *)firstName{
    return _firstName;
}

-(void)setLastName:(NSString *)lastName{
    if(_lastName != lastName){
        
        [lastName retain];
        [_lastName release];
        
        _lastName = lastName;
    }
}
-(NSString *)lastName{
    return _lastName;
}

-(void)setAge:(NSNumber *)age{
    if(_age != age){
        
        [age retain];
        [_age release];
        
        _age = age;
    }
}
-(NSNumber *)age{
    return _age;
}

-(void)dealloc{
    [_firstName release];
    [_lastName release];
    [_age release];
    
    [super dealloc];
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

//-(NSString *)description{
//    NSString *description = [[[NSString alloc]initWithFormat:@"%@", self.name]autorelease];
//    
//    return description;
//    
//}

