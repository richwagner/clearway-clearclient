//
//  ViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 3/10/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIAlertViewDelegate>

@property (nonatomic, retain) IBOutlet UILabel *welcomeLabel;
@property (nonatomic, retain) IBOutlet UIButton *getStaredButton;
@property (nonatomic, retain) IBOutlet UIButton *createClientButton;

@end

