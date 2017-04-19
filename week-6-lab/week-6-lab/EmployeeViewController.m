//
//  EmployeeViewController.m
//  week-6-lab
//
//  Created by Christina Lee on 4/18/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "EmployeeViewController.h"
#import "EmployeeDatabase.h"

@interface EmployeeViewController () <UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *table;

@end

@implementation EmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.table.dataSource = self;
    Employee *adam = [[Employee alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" age:@30 yearsEmployed:@2 managerName:@"Brook" andEmail:@"adam@codefellows" ];
    [[EmployeeDatabase shared]add:adam];
    

    
    Employee *erica = [[Employee alloc]initWithFirstName:@"Erica" lastName:@"Winberry" age:@30 yearsEmployed:@1 managerName:@"Adam" andEmail:@"erica@codefellows"];
    [[EmployeeDatabase shared]add:erica];

    
    Employee *cathy = [[Employee alloc]initWithFirstName:@"Cathy" lastName:@"Oun" age:@25 yearsEmployed:@1 managerName:@"Adam" andEmail:@"cathy@codefellows"];
    [[EmployeeDatabase shared]add:cathy];
    
    NSLog(@"%@", [[EmployeeDatabase shared] allEmployees]);
    //[self.table reloadData]; // write in setter
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmployeeDatabase shared] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    NSArray *array = [[EmployeeDatabase shared] allEmployees];
    Employee *em = array[indexPath.row];
    cell.textLabel.text = em.firstName;
    return cell;
}

@end






