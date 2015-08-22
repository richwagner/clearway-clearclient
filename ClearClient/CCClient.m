//
//  CCClient.m
//  ClearClient
//
//  Created by Rich Wagner on 8/1/15.
//  Copyright (c) 2015 Clearway Clinic. All rights reserved.
//

#import "CCClient.h"
#import <SFDateUtil.h>

@implementation CCClient



- (NSDictionary*)dictFromClient {
// [self sfBirthDate], @"Birthdate__c",
// self.age, @"Age__c",
//                                        self.homePhone, @"Home_phone__c",

    NSDictionary *result = [NSDictionary dictionaryWithObjectsAndKeys:
                                        self.firstName, @"First_Name__c",
                                        self.lastName, @"Name",
                                        self.city, @"City__c",
                                        self.state, @"State__c",
                                        self.address, @"Street_address__c",
                                        self.mobilePhone, @"Cell_phone__c",
                                        self.email, @"ClientEmail__c",
                                        nil];
    return result;
}

- (NSString*)sfBirthDate {
    return [SFDateUtil toSOQLDateTimeString:self.birthDate isDateTime:true];
}


/*
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
 
 Client ID, ClientID__c
 First Name, First_Name__c
 Last Name, Name,
 Age, Age__c
 Birthdate,	Birthdate__c
 City,	City__c
 Client Email, 	ClientEmail__c
 State, State__c
 Street Address, Street_address__c
 Zip Code, Zip_code__c
 Primary Phone, Home_phone__c
 Secondary Phone, Cell_phone__c
 
 Contact Preference, Contact_Preference__c
 Country of Birth, Country_of_Birth__c
 Create Date, CreateDate__c
 Emergency Contact Name,	EmergencyCont__c
 Emergency Phone Number,	EmergencyPhoneNo__c
 Emergency Relationship,	Emerg_relationship__c
 Employer, Employer__c
 Gender, Gender__c
 How They Heard About Us, HowCameHere__c
 Living Arrangement, Living_Arrangement__c
 Marital Status, MaritalStatus__c
 Occupation, Occupation__c
 Organization Referred By, Organization_Referred_By__c
 Safe to Contact?, Safe_to_Contact__c
 School in Attendance, SchoolAttend__c
 Student, Student__c
 Voice Mail Ok, Voice_Mail_Ok__c
 */
@end
