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

+ (id)sharedManager;
@end
