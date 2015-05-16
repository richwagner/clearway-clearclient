//
//  HIPAAViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "HIPAAViewController.h"
#import "AppController.h"

@interface HIPAAViewController ()

@end

@implementation HIPAAViewController

- (IBAction)switchChanged:(id)sender {
    AppController *app = [AppController sharedManager];
    app.step2Complete = self.approveSwitch.on;
}

- (IBAction)doneButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stepLabel.font = [UIFont fontWithName:@"Archer-Bold" size:20.0];    
    [AppController styleDefaultButton:self.doneButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
