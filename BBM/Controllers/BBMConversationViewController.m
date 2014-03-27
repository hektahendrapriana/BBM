//
//  BBMConversationViewController.m
//  BBM
//
//  Created by Andrei Tulai on 2014-03-25.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import "BBMConversationViewController.h"
#import "BBMNavigationProfileView.h"

@interface BBMConversationViewController ()

@end

@implementation BBMConversationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    BBMNavigationProfileView *profilePic = [[[NSBundle mainBundle] loadNibNamed:@"BBMNavigationProfileView" owner:self options:nil] firstObject];
    [profilePic.imageView setImage:[UIImage imageNamed:@"batman"]];
    self.navigationItem.titleView = profilePic;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
