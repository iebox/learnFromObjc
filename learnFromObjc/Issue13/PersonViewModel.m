//
//  PersonViewModel.m
//  commandLineTest
//
//  Created by mikex on 7/2/14.
//  Copyright (c) 2014 mikex. All rights reserved.
//

#import "PersonViewModel.h"

@implementation PersonViewModel
- (instancetype)initWithPerson:(Person *)person {
    self = [super init];
    if (!self) return nil;
    
    _person = person;
    if (person.salutation.length > 0) {
        _nameText = [NSString stringWithFormat:@"%@ %@ %@", self.person.salutation, self.person.firstName, self.person.lastName];
    } else {
        _nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    _birthdateText = [dateFormatter stringFromDate:person.birthdate];
    
    return self;
}
@end
