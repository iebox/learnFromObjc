//
//  Person.m
//  commandLineTest
//
//  Created by mikex on 7/2/14.
//  Copyright (c) 2014 mikex. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)initwithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSDate *)birthdate {
    
    _salutation = salutation;
    _firstName = firstName;
    _lastName = lastName;
    _birthdate = birthdate;
    return self;
}
@end
