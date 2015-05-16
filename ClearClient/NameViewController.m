//
//  NameViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 3/10/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "NameViewController.h"

@interface NameViewController ()

@end

@implementation NameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstNameField.font = [UIFont fontWithName:@"Archer-Light" size:34.0];
    self.lastNameField.font = [UIFont fontWithName:@"Archer-Light" size:34.0];

    self.continueButton.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:17.0];
    self.continueButton.layer.borderWidth = 1;
    self.continueButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.continueButton.layer.cornerRadius = 5;

    self.step1Label.font = [UIFont fontWithName:@"Novecentowide-Book" size:14.0];
    self.step2Label.font = [UIFont fontWithName:@"Novecentowide-Book" size:14.0];
    self.step3Label.font = [UIFont fontWithName:@"Novecentowide-Book" size:14.0];
    self.step4Label.font = [UIFont fontWithName:@"Novecentowide-Book" size:14.0];
    self.step5Label.font = [UIFont fontWithName:@"Novecentowide-Book" size:14.0];
    self.step6Label.font = [UIFont fontWithName:@"Novecentowide-Book" size:14.0];

    self.step1CircleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:40.0];
    self.step2CircleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:40.0];
    self.step3CircleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:40.0];
    self.step4CircleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:40.0];
    self.step5CircleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:40.0];
    self.step6CircleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:40.0];
   
    self.instructionsLabel.font = [UIFont fontWithName:@"Archer-Medium" size:22.0];

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
