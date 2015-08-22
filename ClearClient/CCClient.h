//
//  CCClient.h
//  ClearClient
//
//  Created by Rich Wagner on 8/1/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CCClient : NSObject



@property (nonatomic, strong) NSString *objectId;
@property (nonatomic, strong) NSString *clientId;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSString *age;
@property (nonatomic, strong) NSDate *birthDate;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *zipCode;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *homePhone;
@property (nonatomic, strong) NSString *mobilePhone;


- (NSDictionary*)dictFromClient;

@end
