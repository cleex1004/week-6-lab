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

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [[EmployeeDatabase shared]removeEmployeeAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

@end






