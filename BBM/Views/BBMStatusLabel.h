//
//  BBMStatusLabel.h
//  BBM
//
//  Created by Andrei Tulai on 2014-03-25.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    BBMMessageStatusInvalid = 0,
    BBMMessageStatusSending,
    BBMMessageStatusSent,
    BBMMessageStatusDelivered,
    BBMMessageStatusRead,
    BBMMessageStatusReceived,
    BBMMessageStatusReceivedRead
} BBMMessageStatusType;

@interface BBMStatusLabel : UILabel

@property (nonatomic) BBMMessageStatusType status;

@end
