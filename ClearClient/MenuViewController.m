//
//  MenuViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "MenuViewController.h"
#import "AppController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (IBAction)step1Tapped:(id)sender {
    [self performSegueWithIdentifier:@"Step1Segue" sender:sender];
}

- (IBAction)step2Tapped:(id)sender {
    [self performSegueWithIdentifier:@"Step2Segue" sender:sender];
}

- (IBAction)step3Tapped:(id)sender {
    [self performSegueWithIdentifier:@"Step3Segue" sender:sender];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    AppController *app = [AppController sharedManager];
    
    if (app.step1Complete) {
        self.step1ImageView.image = [UIImage imageNamed:@"TaskComplete"];
    }
    else {
        self.step1ImageView.image = [UIImage imageNamed:@"TaskIncomplete"];
    }


    if (app.step2Complete) {
        self.step2ImageView.image = [UIImage imageNamed:@"TaskComplete"];
    }
    else {
        self.step2ImageView.image = [UIImage imageNamed:@"TaskIncomplete"];
    }


    if (app.step2Complete) {
        self.step2ImageView.image = [UIImage imageNamed:@"TaskComplete"];
    }
    else {
        self.step2ImageView.image = [UIImage imageNamed:@"TaskIncomplete"];
    }

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.welcomeLabel.font = [UIFont fontWithName:@"Archer-Bold" size:24.0];
    self.step1Button.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Medium" size:15.0];
    self.step2Button.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Medium" size:15.0];
    self.step3Button.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Medium" size:15.0];
    
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(step1Tapped:)];
    [self.step1ImageView addGestureRecognizer:tap1];

    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(step2Tapped:)];
    [self.step2ImageView addGestureRecognizer:tap2];

    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(step3Tapped:)];
    [self.step3ImageView addGestureRecognizer:tap3];

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
