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
    
    
    
//    Employee *adam = [[Employee alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" age:@30 yearsEmployed:@2 managerName:@"Brook" andEmail:@"adam@codefellows" ];
//    [[EmployeeDatabase shared]add:adam];
//    
//    Employee *erica = [[Employee alloc]initWithFirstName:@"Erica" lastName:@"Winberry" age:@30 yearsEmployed:@1 managerName:@"Adam" andEmail:@"erica@codefellows"];
//    [[EmployeeDatabase shared]add:erica];
//    
//    Employee *cathy = [[Employee alloc]initWithFirstName:@"Cathy" lastName:@"Oun" age:@25 yearsEmployed:@1 managerName:@"Adam" andEmail:@"cathy@codefellows"];
//    [[EmployeeDatabase shared]add:cathy];
    
    NSLog(@"%@", [[EmployeeDatabase shared] allEmployees]);
  
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.table reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[EmployeeDatabase shared] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    cell.textLabel.text = [[EmployeeDatabase shared]employeeAtIndex:indexPath.row].firstName;
    cell.textLabel.textColor = [UIColor colorWithRed:0.13 green:0.24 blue:0.58 alpha:1.0];
    return cell;
}

@end






