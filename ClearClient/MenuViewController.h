//
//  MenuViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

@property (nonatomic, retain) IBOutlet UILabel *welcomeLabel;
@property (nonatomic, retain) IBOutlet UIButton *step1Button;
@property (nonatomic, retain) IBOutlet UIButton *step2Button;
@property (nonatomic, retain) IBOutlet UIButton *step3Button;
@property (nonatomic, retain) IBOutlet UIImageView *step1ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step2ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step3ImageView;

- (IBAction)step1Tapped:(id)sender;
- (IBAction)step2Tapped:(id)sender;
- (IBAction)step3Tapped:(id)sender;

@end
