//
//  SDUserActivity.m
//  SDUserActivity-Example
//
//  Created by Sam Grover on 11/5/14.
//  Copyright (c) 2014 Set Direction. All rights reserved.
//

#import "SDUserActivity.h"

NSString* const kSDUserActivityWebpageURLKey = @"kSDUserActivityWebpageURLKey";
NSString* const kSDUserActivityCustomURLKey = @"kSDUserActivityCustomURLKey";
NSString* const kSDUserActivityTitleKey = @"kSDUserActivityTitleKey";

@implementation SDUserActivity

+ (SDUserActivity*)userActivityForType:(NSString*)activityType withConfigurationValues:(NSDictionary*)configurationValues
{
    // Make sure the activity type is supported by this app
    NSArray *supportedActivityTypes = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"NSUserActivityTypes"];
    NSAssert([supportedActivityTypes containsObject:activityType], @"The activity type '%@' is not supported as indicated in the Info.plist file.", activityType);
    
    SDUserActivity* userActivity = [[SDUserActivity alloc] initWithActivityType:activityType];
    
    // Do a few sanity checks for contract
    NSURL* webpageURL = configurationValues[kSDUserActivityWebpageURLKey];
    if (webpageURL)
    {
        NSAssert([webpageURL isKindOfClass:[NSURL class]], @"The value for key %@ must be of type NSURL", kSDUserActivityWebpageURLKey);
    }
    
    NSURL* customURL = configurationValues[kSDUserActivityCustomURLKey];
    if (customURL)
    {
        NSAssert([customURL isKindOfClass:[NSURL class]], @"The value for key %@ must be of type NSURL", kSDUserActivityCustomURLKey);
    }
    
    NSString* preferredTitle = configurationValues[kSDUserActivityTitleKey];
    if (preferredTitle)
    {
        NSAssert([preferredTitle isKindOfClass:[NSString class]], @"The value for key %@ must be of type NSString", kSDUserActivityTitleKey);
    }
    
    userActivity.webpageURL = webpageURL;
    userActivity.title = preferredTitle;
    [userActivity addUserInfoEntriesFromDictionary:configurationValues];
    [userActivity becomeCurrent];
    
    NSLog(@"userActivity = %@", userActivity);
    NSLog(@"userActivity.webpageURL = %@", userActivity.webpageURL);
    NSLog(@"userActivity.userInfo = %@", userActivity.userInfo);
    
    return userActivity;
}

- (void)dealloc
{
    [self invalidate];
}

@end
