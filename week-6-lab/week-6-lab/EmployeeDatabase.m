//
//  EmployeeDatabase.m
//  week-6-lab
//
//  Created by Christina Lee on 4/18/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSMutableArray *employees;

@end

@implementation EmployeeDatabase

+(instancetype)shared{
    static EmployeeDatabase *shared = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
//        shared = [[EmployeeDatabase alloc]init]; another way
        shared = [[[self class] alloc]init];
    });
    return shared;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if (! _employees) {
            _employees = [[NSMutableArray alloc]init]; //better practice
        }
//        self.employees = [[NSMutableArray alloc]init]; //calls method does not access directly
    }
    return self;
}

-(void)save{
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:self.archiveURL.path];
    [self willChangeValueForKey:@"employees"];

    if (success) {
        NSLog(@"saved Employees");
    } else {
        NSLog(@"save Failed");
    }
    [self didChangeValueForKey:@"employees"];
}

+ (BOOL)automaticallyNotifiesObserversOfEmployees{
    return NO;
}

-(NSInteger)count{
    return [self.employees count];
}

-(NSArray *)allEmployees{
    return self.employees;
}

-(Employee *)employeeAtIndex:(NSInteger)index{
    return [self.employees objectAtIndex:index];
}

-(void)add:(Employee *)employee{
    [self.employees addObject:employee];
    [self save];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
    [self save];
}

-(void)removeEmployeeAtIndex:(NSInteger)index{
    [self.employees removeObjectAtIndex:index];
    [self save];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
    [self save];
}


//MARK: Helper Methods
-(NSURL *)documentsDirectory{
    NSURL *documentsDirectoryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject]; //first object like .first
    
    return documentsDirectoryURL;
}

-(NSURL *)archiveURL{
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
}

@end
