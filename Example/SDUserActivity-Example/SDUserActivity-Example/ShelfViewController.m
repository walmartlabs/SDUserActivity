//
//  ShelfViewController.m
//  SDUserActivity-Example
//
//  Created by Sam Grover on 11/6/14.
//  Copyright (c) 2014 Set Direction. All rights reserved.
//

#import "ShelfViewController.h"
#import "SDUserActivity.h"

@interface ShelfViewController ()

@property (nonatomic, strong) SDUserActivity* activity;

@end

@implementation ShelfViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSDictionary* configurationValues = @{ kSDUserActivityTitleKey: @"iPad & Tablets",
                                           kSDUserActivityWebpageURLKey: [NSURL URLWithString:@"http://walmart.com/cp/1078524"],
                                           kSDUserActivityCustomURLKey: [NSURL URLWithString:@"walmart://shelf/1078524"]
                                           };
    self.activity = [SDUserActivity userActivityForType:@"com.setdirection.shelf" withConfigurationValues:configurationValues];
}

@end
