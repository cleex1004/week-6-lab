//
//  Person.h
//  week-6-lab
//
//  Created by Christina Lee on 4/17/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSNumber *age;

//{
//    NSString *_firstName;
//}

//-(NSString *)firstName;
//-(void)setFirstName:(NSString *)firstName;
//
//-(NSString *)lastName;
//-(void)setLastName:(NSString *)lastName;
//
//-(NSNumber *)age;
//-(void)setAge:(NSNumber *)age;

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName andAge:(NSNumber *)age;

@end
