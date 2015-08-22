//
//  AppController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/16/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "AppController.h"
#import <QuartzCore/QuartzCore.h>
#import <IQDropDownTextField.h>
#import <SHSPhoneTextField.h>
#import <SHEmailValidationTextField.h>

static AppController *sharedApp = nil;

@implementation AppController


//===========================================================
// UI utility methods
//===========================================================

#pragma mark - UI utility methods

+ (UIColor *)hexColor:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

+ (void)styleDefaultButton:(UIButton*)button {
    button.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:17.0];
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor whiteColor].CGColor;
    button.layer.cornerRadius = 5;
}

+ (void)styleAllControls:(UIView *)view {
    
    [self styleLabels:view withFontname:nil withFontSize:16];
    [self styleTextFields:view];
    [self styleSegmentedControls:view];
}


+ (void)styleLabels:(UIView *)view withFontname:(NSString *)fontName withFontSize:(CGFloat)fontSize {
    
    if (!fontName) {
        fontName = @"Novecentowide-Medium";
    }
    
    for (UIView *v in [view subviews]) {
        if ([v isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel *)v;
            
            CGFloat fs = fontSize;
            if (fs == 0 || v.tag > 0) {
                fs = label.font.pointSize;
            }

            label.font = [UIFont fontWithName:fontName size:fs];
        }
    }
}

+ (void)styleTaggedLabels:(UIView *)view withFontname:(NSString *)fontName withTag:(NSInteger)tag {
    
    if (!fontName) {
        fontName = @"Novecentowide-Medium";
    }
    
    for (UIView *v in [view subviews]) {
        if ([v isKindOfClass:[UILabel class]]) {
            UILabel *label = (UILabel *)v;
            
            if (v.tag == tag) {
                label.font = [UIFont fontWithName:fontName size:label.font.pointSize];
            }
            
         }
    }
}


+ (void)styleTextFields:(UIView *)view {
    
    for (UIView *v in [view subviews]) {
        if ([v isKindOfClass:[UITextField class]] ||
            [v isKindOfClass:[IQDropDownTextField class]] ||
            [v isKindOfClass:[SHSPhoneTextField class]] ||
            [v isKindOfClass:[SHEmailValidationTextField class]]) {
            UITextField *textField = (UITextField *)v;
            textField.font = [UIFont fontWithName:@"Archer-Medium" size:textField.font.pointSize];
        
            UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
            textField.leftView = paddingView;
            textField.leftViewMode = UITextFieldViewModeAlways;
        
        }
    }
}

+ (void)styleSegmentedControls:(UIView *)view {
    
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                [UIFont fontWithName:@"Archer-Medium" size:18], NSFontAttributeName,
                                [UIColor whiteColor], NSForegroundColorAttributeName, nil];
    
    for (UIView *v in [view subviews]) {
        if ([v isKindOfClass:[UISegmentedControl class]]) {
            UISegmentedControl *sc = (UISegmentedControl *)v;
            [sc setTitleTextAttributes:attributes forState:UIControlStateNormal];
            CGRect frame = sc.frame;
            frame.size.height = 50;
            sc.frame = frame;
        }
    }

}

//===========================================================
// Singleton methods
//===========================================================

#pragma mark Singleton methods

+ (id)sharedManager {
    @synchronized([AppController class]) {
        if (sharedApp == nil)
            sharedApp = [[AppController alloc] init];
    }
    return sharedApp;
}

//===========================================================
// Class level
//===========================================================

- (id)init {
    if (self = [super init]) {
    }
    return self;
}

@end
