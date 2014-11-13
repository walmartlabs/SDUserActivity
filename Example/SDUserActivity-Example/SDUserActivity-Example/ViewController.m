//
//  ViewController.m
//  SDUserActivity-Example
//
//  Created by Sam Grover on 11/5/14.
//  Copyright (c) 2014 Set Direction. All rights reserved.
//

#import "ViewController.h"
#import "SDUserActivity.h"

@interface ViewController ()

@property (nonatomic, strong) SDUserActivity* activity;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSDictionary* configurationValues = @{ kSDUserActivityTitleKey: @"Home",
                                           kSDUserActivityWebpageURLKey: [NSURL URLWithString:@"http://walmart.com/"],
                                           kSDUserActivityCustomURLKey: [NSURL URLWithString:@"walmart://home"]
                                           };
    self.activity = [SDUserActivity userActivityForType:@"com.setdirection.home" withConfigurationValues:configurationValues];
}

@end
