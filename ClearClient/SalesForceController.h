//
//  SalesForceController.h
//  ClearClient
//
//  Created by Rich Wagner on 7/3/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SFRestAPI.h>
#import "CCClient.h"

typedef enum {
    SFStateNewClient = 0,
    SFStateUpdateClient = 1
} SFState;


extern NSString *SFClientCreateSuccessNotification;
extern NSString *SFClientCreateFailureNotification;

@interface SalesForceController : NSObject <SFRestDelegate>

@property (nonatomic, strong) CCClient *currentClient;

- (void)createNewClient;
- (void)updateClient;
- (void)getClients;
- (void)uploadSignature;

+ (id)sharedManager;

@end
