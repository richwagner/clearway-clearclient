//
//  NameViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 3/10/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NameViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *firstNameField;
@property (nonatomic, retain) IBOutlet UITextField *lastNameField;
@property (nonatomic, retain) IBOutlet UIButton *continueButton;
@property (nonatomic, retain) IBOutlet UILabel *step1Label;
@property (nonatomic, retain) IBOutlet UILabel *step2Label;
@property (nonatomic, retain) IBOutlet UILabel *step3Label;
@property (nonatomic, retain) IBOutlet UILabel *step4Label;
@property (nonatomic, retain) IBOutlet UILabel *step5Label;
@property (nonatomic, retain) IBOutlet UILabel *step6Label;
@property (nonatomic, retain) IBOutlet UILabel *step1CircleLabel;
@property (nonatomic, retain) IBOutlet UILabel *step2CircleLabel;
@property (nonatomic, retain) IBOutlet UILabel *step3CircleLabel;
@property (nonatomic, retain) IBOutlet UILabel *step4CircleLabel;
@property (nonatomic, retain) IBOutlet UILabel *step5CircleLabel;
@property (nonatomic, retain) IBOutlet UILabel *step6CircleLabel;
@property (nonatomic, retain) IBOutlet UIImageView *step1ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step2ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step3ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step4ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step5ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step6ImageView;
@property (nonatomic, retain) IBOutlet UILabel *instructionsLabel;

@end
