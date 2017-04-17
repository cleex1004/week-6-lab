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

-(NSString *)firstName{
    return _firstName;
}
-(void)setFirstName:(NSString *)firstName{
    _firstName = firstName;
}

-(NSString *)lastName{
    return _lastName;
}
-(void)setLastName:(NSString *)lastName{
    _lastName = lastName;
}

-(NSNumber *)age{
    return _age;
}
-(void)setAge:(NSNumber *)age{
    _age = age;
}

@end

