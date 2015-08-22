//
//  SalesForceController.m
//  ClearClient
//
//  Created by Rich Wagner on 7/3/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "SalesForceController.h"
#import "CCClient.h"
#import <SFRestAPI.h>
#import <SFRestRequest.h>
#import <SFDateUtil.h>

NSString *SFClientCreateSuccessNotification = @"sfClientCreateSuccessNotification";
NSString *SFClientCreateFailureNotification = @"sfClientCreateFailureNotification";
NSString *SFClientUpdateSuccessNotification = @"sfClientUpdateSuccessNotification";
NSString *SFClientUpdateFailureNotification = @"sfClientUpdateFailureNotification";

static SalesForceController *sharedApp = nil;

@interface SalesForceController()
@property (nonatomic, assign) SFState state;
@end

@implementation SalesForceController

//===========================================================
// Public API calls
//===========================================================

#pragma mark - Public API calls

- (void)getUsers {
    SFRestRequest *request = [[SFRestAPI sharedInstance] requestForQuery:@"SELECT Name FROM User LIMIT 10"];
    [[SFRestAPI sharedInstance] send:request delegate:self];
}

- (void)createNewClient {
    
    self.state = SFStateNewClient;
    
    NSString *currentDate = [SFDateUtil toSOQLDateTimeString:[NSDate date] isDateTime:true]; //2015-08-01T19:20:04.000Z
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                                       @"Jane", @"First_Name__c",
                                       @"Doe", @"Name",
                                       currentDate, @"CreateDate__c",
                                       nil];
    
    SFRestRequest *request = [[SFRestAPI sharedInstance] requestForCreateWithObjectType:@"Clients__c" fields:dict];
    [[SFRestAPI sharedInstance] send:request delegate:self];
    
}

- (void)updateClient {
    if (self.currentClient) {
        NSDictionary *dict = [self.currentClient dictFromClient];
        NSString *objectId = self.currentClient.objectId;
        self.state = SFStateUpdateClient;
        SFRestRequest *request = [[SFRestAPI sharedInstance] requestForUpdateWithObjectType:@"Clients__c" objectId:objectId fields:dict];
        [[SFRestAPI sharedInstance] send:request delegate:self];
    }
}

- (void)getClients {
    SFRestRequest *request = [[SFRestAPI sharedInstance] requestForQuery:@"SELECT First_Name__c, Name FROM Clients__c LIMIT 100"];
    [[SFRestAPI sharedInstance] send:request delegate:self];
}

- (void)createNewCase {
    
    NSString *currentDate = [SFDateUtil toSOQLDateTimeString:[NSDate date] isDateTime:true]; //2015-08-01T19:20:04.000Z
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"Jane", @"First_Name__c",
                          @"Doe", @"Name",
                          currentDate, @"CreateDate__c",
                          nil];
    
    SFRestRequest *request = [[SFRestAPI sharedInstance] requestForCreateWithObjectType:@"Clients__c" fields:dict];
    [[SFRestAPI sharedInstance] send:request delegate:self];
}


//===========================================================
// Client methods
//===========================================================

#pragma mark - Client methods




//===========================================================
// SFRestAPIDelegate methods
//===========================================================

#pragma mark - SFRestAPIDelegate

- (void)request:(SFRestRequest *)request didLoadResponse:(id)jsonResponse {
   
    if (self.state == SFStateNewClient) {
        NSString *objectID = [jsonResponse objectForKey:@"id"];
        self.currentClient = CCClient.new;
        self.currentClient.objectId = objectID;
        NSLog(@"New client created %@", objectID);
    }
    else if (self.state == SFStateUpdateClient) {
        NSLog(@"Client record successfully updated");
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        if (self.state == SFStateNewClient) {
            [[NSNotificationCenter defaultCenter] postNotificationName:SFClientCreateSuccessNotification object:nil userInfo:nil];
        }
        else if (self.state == SFStateUpdateClient) {
            [[NSNotificationCenter defaultCenter] postNotificationName:SFClientUpdateSuccessNotification object:nil userInfo:nil];
        }
    });

}

- (void)request:(SFRestRequest*)request didFailLoadWithError:(NSError*)error {
    NSLog(@"request:didFailLoadWithError: %@", error);
    [self notifyError];
}

- (void)requestDidCancelLoad:(SFRestRequest *)request {
    NSLog(@"requestDidCancelLoad: %@", request);
    [self notifyError];
 }

- (void)requestDidTimeout:(SFRestRequest *)request {
    NSLog(@"requestDidTimeout: %@", request);
    [self notifyError];
}

- (void)notifyError {
    
    if (self.state == SFStateNewClient) {
        [[NSNotificationCenter defaultCenter] postNotificationName:SFClientCreateFailureNotification object:nil userInfo:nil];
    }
    else if (self.state == SFStateUpdateClient) {
        [[NSNotificationCenter defaultCenter] postNotificationName:SFClientUpdateFailureNotification object:nil userInfo:nil];
    }
    
}


//===========================================================
// Singleton methods
//===========================================================

#pragma mark Singleton methods

+ (id)sharedManager {
    @synchronized([SalesForceController class]) {
        if (sharedApp == nil)
            sharedApp = [[SalesForceController alloc] init];
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
