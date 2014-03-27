//
//  BBMTabBarController.m
//  BBM
//
//  Created by Andrei Tulai on 2014-03-27.
//  Copyright (c) 2014 Kennel Studios Inc. All rights reserved.
//

#import "BBMTabBarController.h"
#import "BBMCommon.h"

@interface BBMTabBarController ()

@end

@implementation BBMTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *viewControllerArray = [[NSMutableArray alloc] initWithCapacity:5];
    
    [viewControllerArray addObject:[[UIStoryboard storyboardWithName:storyboardNameForCurrentDevice(@"Chats") bundle:nil] instantiateInitialViewController]];
    [viewControllerArray addObject:[[UIStoryboard storyboardWithName:storyboardNameForCurrentDevice(@"Updates") bundle:nil] instantiateInitialViewController]];
    [viewControllerArray addObject:[[UIStoryboard storyboardWithName:storyboardNameForCurrentDevice(@"Groups") bundle:nil] instantiateInitialViewController]];
    [viewControllerArray addObject:[[UIStoryboard storyboardWithName:storyboardNameForCurrentDevice(@"Contacts") bundle:nil] instantiateInitialViewController]];
    [viewControllerArray addObject:[[UIStoryboard storyboardWithName:storyboardNameForCurrentDevice(@"Channels") bundle:nil] instantiateInitialViewController]];
    
	[self setViewControllers:viewControllerArray];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
