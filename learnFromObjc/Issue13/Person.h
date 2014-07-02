//
//  Person.h
//  commandLineTest
//
//  Created by mikex on 7/2/14.
//  Copyright (c) 2014 mikex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
- (instancetype)initwithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSDate *)birthdate;

@property (nonatomic, readonly) NSString *salutation;
@property (nonatomic, readonly) NSString *firstName;
@property (nonatomic, readonly) NSString *lastName;
@property (nonatomic, readonly) NSDate *birthdate;
@end
