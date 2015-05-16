//
//  YourIntentionViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/12/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "YourIntentionViewController.h"

@interface YourIntentionViewController ()

@end

@implementation YourIntentionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.continueButton.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:17.0];
    self.continueButton.layer.borderWidth = 1;
    self.continueButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.continueButton.layer.cornerRadius = 5;
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
