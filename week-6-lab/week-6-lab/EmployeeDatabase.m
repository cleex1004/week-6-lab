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
        shared = [[[self class] alloc]init];
    });
    return shared;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        self.employees = [[NSMutableArray alloc]init];
    }
    return self;
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
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
}

-(void)removeEmployeeAtIndex:(NSInteger)index{
    [self.employees removeObjectAtIndex:index];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
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
