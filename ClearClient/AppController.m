//
//  AppController.m
//  ClearClient
//
//  Created by Rich Wagner on 5/16/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "AppController.h"
#import <QuartzCore/QuartzCore.h>

static AppController *sharedApp = nil;

@implementation AppController





+ (void)styleDefaultButton:(UIButton*)button {
    button.titleLabel.font = [UIFont fontWithName:@"Novecentowide-Bold" size:17.0];
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor whiteColor].CGColor;
    button.layer.cornerRadius = 5;
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
