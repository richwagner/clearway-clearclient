//
//  AppController.h
//  ClearClient
//
//  Created by Rich Wagner on 5/16/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppController : NSObject

@property (nonatomic, assign) BOOL step1Complete;
@property (nonatomic, assign) BOOL step2Complete;
@property (nonatomic, assign) BOOL step3Complete;

+ (void)styleDefaultButton:(UIButton*)button;
+ (UIColor *)hexColor:(NSString *)hexString;
+ (void)styleSegmentedControls:(UIView *)view;
+ (void)styleTextFields:(UIView *)view;
+ (void)styleLabels:(UIView *)view withFontname:(NSString *)fontName withFontSize:(CGFloat)fontSize;
+ (void)styleAllControls:(UIView *)view;
+ (void)styleTaggedLabels:(UIView *)view withFontname:(NSString *)fontName withTag:(NSInteger)tag;

+ (id)sharedManager;
@end
