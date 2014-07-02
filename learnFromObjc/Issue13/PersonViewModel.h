//
//  PersonViewModel.h
//  commandLineTest
//
//  Created by mikex on 7/2/14.
//  Copyright (c) 2014 mikex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonViewModel : NSObject
- (instancetype)initWithPerson:(Person *)person;

@property (nonatomic, readonly) Person *person;

@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthdateText;
@end
