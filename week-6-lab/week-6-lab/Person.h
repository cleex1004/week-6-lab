//
//  Person.h
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

-(NSString *)firstName;
-(void)setFirstName:(NSString *)firstName;

-(NSString *)lastName;
-(void)setLastName:(NSString *)lastName;

-(NSNumber *)age;
-(void)setAge:(NSNumber *)age;

@end
