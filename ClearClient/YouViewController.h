//
//  YouViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const SELECTED_NAV_TEXT_COLOR;
extern NSString *const NAV_TEXT_COLOR; 

@interface YouViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

@property (nonatomic, retain) IBOutlet UIView *step1View;
@property (nonatomic, retain) IBOutlet UIView *step2View;
@property (nonatomic, retain) IBOutlet UIView *step3View;
@property (nonatomic, retain) IBOutlet UIView *step4View;
@property (nonatomic, retain) IBOutlet UIView *step5View;
@property (nonatomic, retain) IBOutlet UIView *step6View;

@property (nonatomic, retain) IBOutlet UILabel *step1NavLabel;
@property (nonatomic, retain) IBOutlet UILabel *step2NavLabel;
@property (nonatomic, retain) IBOutlet UILabel *step3NavLabel;
@property (nonatomic, retain) IBOutlet UILabel *step4NavLabel;
@property (nonatomic, retain) IBOutlet UILabel *step5NavLabel;
@property (nonatomic, retain) IBOutlet UILabel *step6NavLabel;

@property (nonatomic, retain) IBOutlet UILabel *step1NumberLabel;
@property (nonatomic, retain) IBOutlet UILabel *step2NumberLabel;
@property (nonatomic, retain) IBOutlet UILabel *step3NumberLabel;
@property (nonatomic, retain) IBOutlet UILabel *step4NumberLabel;
@property (nonatomic, retain) IBOutlet UILabel *step5NumberLabel;
@property (nonatomic, retain) IBOutlet UILabel *step6NumberLabel;

@property (nonatomic, retain) IBOutlet UIImageView *step1ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step2ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step3ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step4ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step5ImageView;
@property (nonatomic, retain) IBOutlet UIImageView *step6ImageView;


@property (nonatomic, retain) IBOutlet UIButton *backButton;
@property (nonatomic, retain) IBOutlet UIButton *continueButton;

@property (nonatomic, assign) NSInteger currentPageIndex; 

@end
