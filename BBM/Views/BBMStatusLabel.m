//
//  BBMStatusLabel.m
//  BBM
//
//  Created by Andrei Tulai on 2014-03-25.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import "BBMStatusLabel.h"
#import "UIColor+BBM.h"

@implementation BBMStatusLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setStatus:(BBMMessageStatusType)status
{
    _status = status;
    switch (_status) {
        case BBMMessageStatusDelivered:
        {
            [self setText:@"D"];
            [self setBackgroundColor:[UIColor BBMLightBlueColor]];
            [self setTextColor:[UIColor whiteColor]];
        }
            break;
        case BBMMessageStatusRead:
        {
            [self setText:@"R"];
            [self setBackgroundColor:[UIColor BBMGreenColor]];
            [self setTextColor:[UIColor whiteColor]];
        }
            break;
        case BBMMessageStatusSending:
        {
            [self setText:@"S"];
            [self setBackgroundColor:[UIColor grayColor]];
            [self setTextColor:[UIColor whiteColor]];
        }
            break;
        case BBMMessageStatusSent:
        {
            [self setText:@"✓"];
            [self setBackgroundColor:[UIColor BBMGrayColor]];
            [self setTextColor:[UIColor whiteColor]];
        }
            break;
        case BBMMessageStatusReceived:
        {
            [self setText:@"●"];
            [self setBackgroundColor:[UIColor clearColor]];
            [self setTextColor:[UIColor BBMYellowColor]];
        }
            break;
        case BBMMessageStatusReceivedRead:
        {
            [self setText:@"●"];
            [self setBackgroundColor:[UIColor clearColor]];
            [self setTextColor:[UIColor BBMGrayColor]];
        }
            break;
            
        default:
            break;
    }
    self.layer.cornerRadius = 1.0f;
}

@end
