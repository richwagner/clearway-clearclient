//
//  BoxController.m
//  ClearClient
//
//  Created by Rich Wagner on 8/22/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "BoxController.h"
#import <BoxContentSDK/BOXContentSDK.h>

static BoxController *sharedApp = nil;

@implementation BoxController

//===========================================================
// Box methods
//===========================================================

#pragma mark Box methods

- (void)uploadClientSignatureToBox:(CCClient *)client {
    
    if (!client.signature) {
        return;
    }
    
    BOXContentClient *contentClient = [BOXContentClient defaultClient];
    BOXFileUploadRequest *uploadRequest = [contentClient fileUploadRequestToFolderWithID:BOXAPIFolderIDRoot
                                                                                fromData:client.signature
                                                                                fileName:[NSString stringWithFormat:@"%@.png", client.clientId]];
    [uploadRequest performRequestWithProgress:^(long long totalBytesTransferred, long long totalBytesExpectedToTransfer) {
        // Update a progress bar, etc.
    } completion:^(BOXFile *file, NSError *error) {
        // Upload has completed. If successful, file will be non-nil; otherwise, error will be non-nil.
        NSLog(@"Upload complete"); 
    }];
    
    
}

//===========================================================
// Singleton methods
//===========================================================

#pragma mark Singleton methods

+ (id)sharedManager {
    @synchronized([BoxController class]) {
        if (sharedApp == nil)
            sharedApp = [[BoxController alloc] init];
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
