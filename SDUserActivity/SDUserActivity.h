//
//  SDUserActivity.h
//  SDUserActivity-Example
//
//  Created by Sam Grover on 11/5/14.
//  Copyright (c) 2014 Set Direction. All rights reserved.
//

#import <Foundation/Foundation.h>

// These constants define keys for well known cases. They should be passwed along with any other keys in the `configurationValues` dictionary.

/*
 A key for the webpage that represents this activity. Value must be of type `NSURL`.
 */
extern NSString* const kSDUserActivityWebpageURLKey;

/*
 A key for the custom URL that represents this activity to the receiving app. Value must be of type `NSURL`.
 */
extern NSString* const kSDUserActivityCustomURLKey;

/*
 A key for the title that will be set up for this activity. This can directly be applied to the `SDUserActivity` itself but is provided for convenience.
 Value must be of type `NSString`.
 */
extern NSString* const kSDUserActivityTitleKey;

@interface SDUserActivity : NSUserActivity

/**
 This method will set up a user activity using the parameters passed and also make it current so that any devices nearby will see the handoff interface to receive the activity.
 @param activityType The activity type. This is the initilization parameter for the superclass. It must be defined in the `Info.plist` file for the app.
 @param configurationValues All values to be passed with the activity's user info. This will include the keys for well known cases defined above.
 @return The user activity object.
 */
+ (SDUserActivity*)userActivityForType:(NSString*)activityType withConfigurationValues:(NSDictionary*)configurationValues;

@end
