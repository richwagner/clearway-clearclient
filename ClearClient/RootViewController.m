//
//  ViewController.m
//  ClearClient
//
//  Created by Rich Wagner on 3/10/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "RootViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "AppController.h"
#import "SalesForceController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)clientSuccessNotification:(NSNotification *)notification {

    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"New Client Created", nil)
                                                    message:@"A new client record has been successfully entered into SalesForce. Please hand this iPad to the client for entering Client and Case information."
                                                   delegate:self
                                          cancelButtonTitle:NSLocalizedString(@"Okay", nil)
                                          otherButtonTitles:nil];
    [alert show];

    [self readyForClentState];
}

- (void)clientFailureNotification:(NSNotification *)notification {
    
}


- (void)readyForClentState {
    self.createClientButton.hidden = YES;
    self.getStaredButton.hidden = NO;
}

- (void)adminState {
    self.createClientButton.hidden = NO;
    self.getStaredButton.hidden = YES;
}

- (IBAction)createClientButtonTouchHandler:(id)sender {
    [[SalesForceController sharedManager] createNewClient];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.welcomeLabel.font = [UIFont fontWithName:@"Archer-Bold" size:24.0];
    [AppController styleDefaultButton:self.createClientButton];
    [AppController styleDefaultButton:self.getStaredButton];
    //TODO: Should we have password to prevent client resetting this?
   // [self adminState];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(clientSuccessNotification:)
                                                 name:SFClientCreateSuccessNotification
                                               object:nil];


    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(clientFailureNotification:)
                                                 name:SFClientCreateFailureNotification
                                               object:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
