//
//  ViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 3/10/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "RootViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.welcomeLabel.font = [UIFont fontWithName:@"Archer-Bold" size:24.0];
    self.getStaredButton.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:17.0];
    self.getStaredButton.layer.borderWidth = 1;
    self.getStaredButton.layer.borderColor = [UIColor whiteColor].CGColor;
    self.getStaredButton.layer.cornerRadius = 5;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
