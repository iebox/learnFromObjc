//
//  AppDelegate.m
//  Issue13
//
//  Created by mikex on 7/2/14.
//  Copyright (c) 2014 mikex. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "PersonViewModel.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextField *nameLabel;
@property (weak) IBOutlet NSTextField *birthdateLabel;


@property (weak) IBOutlet NSTextField *mvvmName;
@property (weak) IBOutlet NSTextField *mvvmDate;



@property Person *model;
@property PersonViewModel *viewModel;


@end

@implementation AppDelegate



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.model = [[Person alloc] initwithSalutation:@"Mr." firstName:@"first" lastName:@"last" birthdate:[NSDate date]];
    
    self.viewModel = [[PersonViewModel alloc] initWithPerson:self.model];
    
    [self withMVVM];
    [self withOutMVVM];

}

- (void)withMVVM {
    self.mvvmName.stringValue = self.viewModel.nameText;
    self.mvvmDate.stringValue = self.viewModel.birthdateText;
}

- (void)withOutMVVM {
    if (self.model.salutation.length > 0) {
        self.nameLabel.stringValue = [NSString stringWithFormat:@"%@ %@ %@", self.model.salutation, self.model.firstName, self.model.lastName];
    } else {
        self.nameLabel.stringValue = [NSString stringWithFormat:@"%@ %@", self.model.firstName, self.model.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    self.birthdateLabel.stringValue = [dateFormatter stringFromDate:self.model.birthdate];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
@end
