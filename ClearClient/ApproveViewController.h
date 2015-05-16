//
//  ApproveViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ApproveViewController : UIViewController
@property (nonatomic, retain) IBOutlet UILabel *stepLabel;
@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) IBOutlet UIButton *signButton;
@property (nonatomic, retain) IBOutlet UIButton *doneButton;

- (IBAction)signButtonTapped:(id)sender;
- (IBAction)doneButtonTapped:(id)sender;

@end
