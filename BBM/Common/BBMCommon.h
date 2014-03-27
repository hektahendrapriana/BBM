//
//  HSCommon.h
//  Humane
//
//  Created by Andrei Tulai on 1/24/2014.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#define IPAD     UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad

NSString * storyboardNameForCurrentDevice(NSString *storyboardName);

@interface BBMCommon : NSObject

+ (NSURL *)croppedImageURLForString:(NSString *)originalImageURLString size:(CGSize)size;

@end
