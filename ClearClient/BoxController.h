//
//  BoxController.h
//  ClearClient
//
//  Created by Rich Wagner on 8/22/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCClient.h"

@interface BoxController : NSObject

- (void)uploadClientSignatureToBox:(CCClient *)client;

+ (id)sharedManager;
@end
