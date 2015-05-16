//
//  DigitalSignViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 5/16/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignatureView.h"

@class DigitalSignViewController;

@interface DigitalSignViewController : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *stepLabel;
@property (nonatomic, retain) IBOutlet UILabel *instructionsLabel;
@property (strong, nonatomic) IBOutlet SignatureView *signatureView;
@property (strong, nonatomic) IBOutlet UIButton *clearButton;
@property (strong, nonatomic) IBOutlet UIButton *signButton; 

- (IBAction)signatureClearTapped:(id)sender;
- (IBAction)signatureSignTapped:(id)sender;
- (void)checkSign;

@end
