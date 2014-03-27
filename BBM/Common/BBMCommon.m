//
//  HSCommon.m
//  Humane
//
//  Created by Andrei Tulai on 1/24/2014.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import "BBMCommon.h"

NSString * storyboardNameForCurrentDevice(NSString *storyboardName)
{
    return [storyboardName stringByAppendingString:IPAD?@"_iPad":@"_iPhone"];
}

@implementation BBMCommon

+ (NSURL *)croppedImageURLForString:(NSString *)originalImageURLString size:(CGSize)size
{
    NSString *imageURLString = [originalImageURLString stringByReplacingOccurrencesOfString:@"http://" withString:@""];
    NSString *croppedString = [NSString stringWithFormat:@"http://images.weserv.nl/?url=%@&w=%d&h=%d&t=square&a=t", imageURLString, (int)(size.width * [[UIScreen mainScreen] scale]), (int)(size.height * [[UIScreen mainScreen] scale])];
    return [NSURL URLWithString:croppedString];
}

@end
