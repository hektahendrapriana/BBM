//
//  BBMChatsTableViewController.m
//  BBM
//
//  Created by Andrei Tulai on 2014-03-24.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import "BBMChatsTableViewController.h"
#import "BBMConversationCell.h"
#import "BBMNavigationProfileView.h"

@interface BBMChatsTableViewController ()

@end

@implementation BBMChatsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    BBMNavigationProfileView *profilePic = [[[NSBundle mainBundle] loadNibNamed:@"BBMNavigationProfileView" owner:self options:nil] firstObject];
    [profilePic.imageView setImage:[UIImage imageNamed:@"andrei"]];
    self.navigationItem.titleView = profilePic;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    BBMConversationCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
        {
            cell.profileImageView.image = [UIImage imageNamed:@"ironman"];
            cell.nameTextLabel.text = @"Tony Stark";
            cell.messageTextLabel.text = @"Lunch tomorrow?";
            cell.statusLabel.status = BBMMessageStatusDelivered;
            cell.status = BBMConversationStatusRead;
        }
            break;
        case 1:
        {
            cell.profileImageView.image = [UIImage imageNamed:@"batman"];
            cell.nameTextLabel.text = @"Bruce Wayne";
            cell.messageTextLabel.text = @"Oh you know, justice 'n stuff.";
            cell.statusLabel.status = BBMMessageStatusReceived;
            cell.status = BBMConversationStatusUnread;
        }
            break;
        case 2:
        {
            cell.profileImageView.image = [UIImage imageNamed:@"pikachu"];
            cell.nameTextLabel.text = @"Pikachu";
            cell.messageTextLabel.text = @"I CHOOSE YOU PIKACHU!";
            cell.statusLabel.status = BBMMessageStatusSent;
            cell.status = BBMConversationStatusRead;
        }
            break;
        case 3:
        {
            cell.profileImageView.image = [UIImage imageNamed:@"jean_grey"];
            cell.nameTextLabel.text = @"Jean Grey";
            cell.messageTextLabel.text = @"hey r u alive?";
            cell.statusLabel.status = BBMMessageStatusRead;
            cell.status = BBMConversationStatusRead;
        }
            break;
        case 4:
        {
            cell.profileImageView.image = [UIImage imageNamed:@"2chainz"];
            cell.nameTextLabel.text = @"2Chainz";
            cell.messageTextLabel.text = @"life should be on cinemax man";
            cell.statusLabel.status = BBMMessageStatusReceivedRead;
            cell.status = BBMConversationStatusRead;
        }
            break;
        case 5:
        {
            cell.profileImageView.image = [UIImage imageNamed:@"dre"];
            cell.nameTextLabel.text = @"Dr. Dre";
            cell.messageTextLabel.text = @"so they was acting like they forgot about dre";
            cell.statusLabel.status = BBMMessageStatusReceivedRead;
            cell.status = BBMConversationStatusRead;
        }
            break;
        case 6:
        {
            cell.profileImageView.image = [UIImage imageNamed:@"method"];
            cell.nameTextLabel.text = @"Method Man";
            cell.messageTextLabel.text = @"He ain't nutin' but a number, unknown John Doe";
            cell.statusLabel.status = BBMMessageStatusReceivedRead;
            cell.status = BBMConversationStatusRead;
        }
            break;
            
        default:
            break;
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
