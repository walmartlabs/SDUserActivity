//
//  ItemViewController.m
//  SDUserActivity-Example
//
//  Created by Sam Grover on 11/6/14.
//  Copyright (c) 2014 Set Direction. All rights reserved.
//

#import "ItemViewController.h"
#import "SDUserActivity.h"

@interface ItemViewController ()

@property (nonatomic, strong) SDUserActivity* activity;

@end

@implementation ItemViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
        
    NSDictionary* configurationValues = @{ kSDUserActivityTitleKey: @"Apple iPad Air 2 128GB Wi-Fi, Gold",
                                           kSDUserActivityWebpageURLKey: [NSURL URLWithString:@"http://walmart.com/ip/37648959"],
                                           kSDUserActivityCustomURLKey: [NSURL URLWithString:@"walmart://item/37648959"]
                                           };
    self.activity = [SDUserActivity userActivityForType:@"com.setdirection.item" withConfigurationValues:configurationValues];
}

@end
