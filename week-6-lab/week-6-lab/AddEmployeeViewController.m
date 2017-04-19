//
//  AddEmployeeViewController.m
//  week-6-lab
//
//  Created by Christina Lee on 4/19/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "AddEmployeeViewController.h"

@interface AddEmployeeViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *yearsEmployed;
@property (weak, nonatomic) IBOutlet UITextField *managerName;
@property (weak, nonatomic) IBOutlet UITextField *email;
- (IBAction)saveButton:(UIButton *)sender;
- (IBAction)cancelButton:(UIButton *)sender;


@end

@implementation AddEmployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (IBAction)saveButton:(UIButton *)sender {
    
}

- (IBAction)cancelButton:(UIButton *)sender {
}
@end
