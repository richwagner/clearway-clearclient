//
//  HIPAAViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HIPAAViewController : UIViewController
@property (nonatomic, retain) IBOutlet UILabel *stepLabel;
@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) IBOutlet UILabel *switchLabel;
@property (nonatomic, retain) IBOutlet UISwitch *approveSwitch;
@property (nonatomic, retain) IBOutlet UIButton *doneButton;

- (IBAction)switchChanged:(id)sender;
- (IBAction)doneButtonTapped:(id)sender;
@end
