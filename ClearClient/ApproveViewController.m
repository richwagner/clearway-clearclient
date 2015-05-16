//
//  ApproveViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "ApproveViewController.h"
#import "AppController.h"

@interface ApproveViewController ()

@end

@implementation ApproveViewController

- (IBAction)signButtonTapped:(id)sender {
    
}

- (IBAction)doneButtonTapped:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)viewWillAppear:(BOOL)animated {
    AppController *app = [AppController sharedManager];
    self.signButton.hidden = app.step1Complete;
    self.doneButton.hidden = !app.step1Complete;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.stepLabel.font = [UIFont fontWithName:@"Archer-Bold" size:20.0];

    //self.textView.font = [UIFont fontWithName:@"Archer-Medium" size:16.0];

    [AppController styleDefaultButton:self.signButton];
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
