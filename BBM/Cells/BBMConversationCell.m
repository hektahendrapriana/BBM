//
//  BBMConversationCell.m
//  BBM
//
//  Created by Andrei Tulai on 2014-03-25.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import "BBMConversationCell.h"

@implementation BBMConversationCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.profileImageView.layer.cornerRadius = 2.0f;
    self.profileImageView.layer.masksToBounds = YES;
}

- (void)setStatus:(BBMConversationStatusType)status
{
    _status = status;
    switch (_status) {
        case BBMConversationStatusRead:
            [self.nameTextLabel setFont:[UIFont systemFontOfSize:self.textLabel.font.pointSize]];
            break;
        case BBMConversationStatusUnread:
            [self.nameTextLabel setFont:[UIFont boldSystemFontOfSize:self.textLabel.font.pointSize]];
            break;
            
        default:
            break;
    }
}

@end
