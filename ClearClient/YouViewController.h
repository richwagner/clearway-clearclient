//
//  YouViewController.h
//  ClearClient
//
//  Created by Rich Wagner on 5/13/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IQDropDownTextField.h>
#import <SHSPhoneTextField.h>
#import <SHEmailValidationTextField.h>

extern NSString *const SELECTED_NAV_TEXT_COLOR;
extern NSString *const NAV_TEXT_COLOR; 

@interface YouViewController : UIViewController <UIScrollViewDelegate, IQDropDownTextFieldDelegate, UITextFieldDelegate, UIAlertViewDelegate>

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

//Step 1
@property (nonatomic, retain) IBOutlet UITextField *firstNameField;
@property (nonatomic, retain) IBOutlet UITextField *lastNameField;
@property (nonatomic, retain) IBOutlet UITextField *addressField;
@property (nonatomic, retain) IBOutlet UITextField *cityField;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *stateField;
@property (nonatomic, retain) IBOutlet UITextField *zipCodeField;
@property (nonatomic, retain) IBOutlet SHSPhoneTextField *phoneField;
@property (nonatomic, retain) IBOutlet SHEmailValidationTextField *emailField;

//Step 2
@property (nonatomic, retain) IBOutlet SHSPhoneTextField *birthdateField;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *countryField;
@property (nonatomic, retain) IBOutlet UISegmentedControl *educationSegmentedControl;
@property (nonatomic, retain) IBOutlet UITextField *emergencyContactName;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *emergencyContactRelationship;
@property (nonatomic, retain) IBOutlet SHSPhoneTextField *emergencyContactPhone;

// Step 4
@property (nonatomic, retain) IBOutlet UISwitch *pregnancyBeforeSwitch;
@property (nonatomic, retain) IBOutlet UIView *pregnancyView;
@property (nonatomic, retain) IBOutlet UIView *abortionView;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *deliveriesField;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *miscarriagesField;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *abortionsField;


// Step 5
@property (nonatomic, retain) IBOutlet UITextField *fatherNameField;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *fatherAgeField;
@property (nonatomic, retain) IBOutlet UISegmentedControl *fatherRelationshipSegmentedControl;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *fatherFuturePlansField;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *fatherPregnancyKnowledgeField;
@property (nonatomic, retain) IBOutlet IQDropDownTextField *fatherInvolvedDecisionField;

// Step 6
@property (nonatomic, retain) IBOutlet UISwitch *safeToContactSwitch;
@property (nonatomic, retain) IBOutlet UILabel *safeToContactLabel;

@property (nonatomic, retain) IBOutlet UIButton *backButton;
@property (nonatomic, retain) IBOutlet UIButton *continueButton;

@property (nonatomic, assign) NSInteger currentPageIndex; 

@end
