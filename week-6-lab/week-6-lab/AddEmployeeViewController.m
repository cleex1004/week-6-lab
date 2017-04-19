//
//  AddEmployeeViewController.m
//  week-6-lab
//
//  Created by Christina Lee on 4/19/17.
//  Copyright © 2017 Christina Lee. All rights reserved.
//

#import "AddEmployeeViewController.h"
#import "EmployeeDatabase.h"
#import "EmployeeViewController.h"

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
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *age = [f numberFromString:self.age.text];
    NSNumber *yearsEmployed = [f numberFromString:self.yearsEmployed.text];
    
    Employee *newEmployee = [[Employee alloc]initWithFirstName:self.firstName.text lastName:self.lastName.text age:age yearsEmployed:yearsEmployed managerName:self.managerName.text andEmail:self.email.text];
    [[EmployeeDatabase shared]add:newEmployee];
//    [self performSegueWithIdentifier:@"EmployeeViewController" sender:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (IBAction)cancelButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

//-(void)textFieldDidBeginEditing:(UITextField *)textField{
//    
//}
//
//-(void)textFieldDidEndEditing:(UITextField *)textField{
//    
//}
//
//-(BOOL)textFieldShouldReturn:(UITextField *)textField{
//    [textField resignFirstResponder];
//    return YES;
//    
//}

//Employee *adam = [[Employee alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" age:@30 yearsEmployed:@2 managerName:@"Brook" andEmail:@"adam@codefellows" ];
//[[EmployeeDatabase shared]add:adam];



@end
