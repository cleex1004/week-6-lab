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

@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation EmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.table.dataSource = self;
    Employee *adam = [[Employee alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" Age:@30 yearsEmployed:@2 managerName:@"Brook" andEmail:@"adam@codefellows" ];
    
    [[EmployeeDatabase shared]add:adam];
    NSLog(@"%@", [[EmployeeDatabase shared] allEmployees]);
    //[self.table reloadData]; // write in setter
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmployeeDatabase shared] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [[EmployeeDatabase shared]employeeAtIndex:indexPath.row].firstName;
    return cell;
}

@end






