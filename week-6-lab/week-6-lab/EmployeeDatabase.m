//
//  EmployeeDatabase.m
//  week-6-lab
//
//  Created by Christina Lee on 4/18/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "EmployeeDatabase.h"

@interface EmployeeDatabase ()

@property(strong, nonatomic) NSArray *employees;

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

-(NSInteger)count{
    NSInteger *count = [[[EmployeeDatabase shared]employees]length];
    return count;
}
-(NSArray *)allEmployees{
    
}
-(Employee *)employeeAtIndex:(int)index{
    
}

-(void)add:(Employee *)employee{
    
}
-(void)remove:(Employee *)employee{
    
}
-(void)removeEmployeeAtIndex:(int)index{
    
}
-(void)removeAllEmployees{
    
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
