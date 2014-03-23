//
//  MainViewController.m
//  VchatUIFramework
//
//  Created by Kelly Xu on 3/22/14.
//  Copyright (c) 2014 iosbootcamp. All rights reserved.
//

#import "MainViewController.h"
#import "RecentViewController.h"
#import "ContactViewController.h"
#import "SettingViewController.h"


@interface MainViewController ()
@property (strong, nonatomic) IBOutlet UIView *mainContentView;


@property (strong, nonatomic) IBOutlet UIButton *button_recent;
@property (strong, nonatomic) IBOutlet UIButton *button_contact;
@property (strong, nonatomic) IBOutlet UIButton *button_setting;
@property (nonatomic,strong) RecentViewController *recentVC;
@property (nonatomic,strong) ContactViewController *contactVC;
@property (nonatomic,strong) SettingViewController *settingVC;

- (IBAction)onRecentButton:(id)sender;
- (IBAction)onContactButton:(id)sender;
- (IBAction)onSettingsButton:(id)sender;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.recentVC = [[RecentViewController alloc]init];
        self.contactVC = [[ContactViewController alloc]init];
        self.settingVC = [[SettingViewController alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.button_recent.selected = YES;
    
    self.recentVC.view.frame = self.mainContentView.frame;
    [self.mainContentView addSubview:self.recentVC.view];
    
    self.contactVC.view.frame = self.mainContentView.frame;
    [self.mainContentView addSubview:self.contactVC.view];
    
    self.settingVC.view.frame = self.mainContentView.frame;
    [self.mainContentView addSubview:self.settingVC.view];
    
    [self.mainContentView bringSubviewToFront:self.recentVC.view];    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onRecentButton:(id)sender {
    self.button_recent.selected = YES;
    self.button_contact.selected = NO;
    self.button_setting.selected = NO;
    [self.mainContentView bringSubviewToFront:self.recentVC.view];
}

- (IBAction)onContactButton:(id)sender {

    self.button_recent.selected = NO;
    self.button_contact.selected = YES;
    self.button_setting.selected = NO;
    [self.mainContentView bringSubviewToFront:self.contactVC.view];
}

- (IBAction)onSettingsButton:(id)sender {
    [self.mainContentView bringSubviewToFront:self.settingVC.view];
    self.button_recent.selected = NO;
    self.button_contact.selected = NO;
    self.button_setting.selected = YES;
}
@end
