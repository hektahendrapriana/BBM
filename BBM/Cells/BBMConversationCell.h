//
//  BBMConversationCell.h
//  BBM
//
//  Created by Andrei Tulai on 2014-03-25.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BBMStatusLabel.h"

typedef enum {
    BBMConversationStatusRead,
    BBMConversationStatusUnread
} BBMConversationStatusType;

@interface BBMConversationCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet BBMStatusLabel *statusLabel;

@property (nonatomic) BBMConversationStatusType status;

@end
