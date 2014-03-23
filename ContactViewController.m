//
//  ContactViewController.m
//  VchatUIFramework
//
//  Created by Kelly Xu on 3/22/14.
//  Copyright (c) 2014 iosbootcamp. All rights reserved.
//

#import "ContactViewController.h"
#import "ContactVCChatNow.h"
#import "ContactVCInvite.h"
#import "ContactVCInviteFacebook.h"

@interface ContactViewController ()
@property (strong, nonatomic) IBOutlet UIView *contactViewContainer;
@property (strong, nonatomic) IBOutlet UIButton *chatNowButton;
@property (strong, nonatomic) IBOutlet UIButton *contactInviteButton;
@property (strong, nonatomic) IBOutlet UIButton *facebookInviteButton;
@property (strong, nonatomic) IBOutlet UIView *labelBGColor;
@property (strong, nonatomic) IBOutlet UILabel *textLabel;

@property (nonatomic,strong) ContactVCChatNow *chatNowVC;
@property (nonatomic,strong) ContactVCInvite *inviteVC;
@property (nonatomic,strong) ContactVCInviteFacebook *inviteFacebookVC;

- (IBAction)onChatNowButton:(id)sender;
- (IBAction)onContactInviteButton:(id)sender;
- (IBAction)onFBInviteButton:(id)sender;
@end

@implementation ContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.chatNowVC = [[ContactVCChatNow alloc]init];
        self.inviteVC = [[ContactVCInvite alloc]init];
        self.inviteFacebookVC = [[ContactVCInviteFacebook alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.chatNowButton.selected = YES;
    self.labelBGColor.backgroundColor = [UIColor colorWithRed:0.478 green:0.765 blue:0.318 alpha:1];
    //ccc3(122, 195, 81);
    
    self.chatNowVC.view.frame = self.contactViewContainer.frame;
    [self.contactViewContainer addSubview:self.chatNowVC.view];
    
    self.inviteVC.view.frame = self.contactViewContainer.frame;
    [self.contactViewContainer addSubview:self.inviteVC.view];
    
    self.inviteFacebookVC.view.frame = self.contactViewContainer.frame;
    [self.contactViewContainer addSubview:self.inviteFacebookVC.view];
    
    [self.contactViewContainer bringSubviewToFront:self.chatNowVC.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onChatNowButton:(id)sender {
    self.labelBGColor.backgroundColor = [UIColor colorWithRed:0.478 green:0.765 blue:0.318 alpha:1];
    //ccc3(122, 195, 81)
    self.textLabel.text = @"Connected Friends";

    
    self.chatNowButton.selected = YES;
    self.contactInviteButton.selected = NO;
    self.facebookInviteButton.selected = NO;
    
    [self.contactViewContainer bringSubviewToFront:self.chatNowVC.view];
}

- (IBAction)onContactInviteButton:(id)sender {
   // self.labelBGColor.backgroundColor = [UIColor yellowColor];
   self.labelBGColor.backgroundColor = [UIColor colorWithRed:0.945 green:0.741 blue:0.125 alpha:1];
    //ccc3(241, 189, 32)
    //self.labelBGColor.backgroundColor = [UIColor colorFromHexCode:@"#e75659"];
    self.textLabel.text = @"Invite from my Contact";
    
    self.chatNowButton.selected = NO;
    self.contactInviteButton.selected = YES;
    self.facebookInviteButton.selected = NO;
    
    [self.contactViewContainer bringSubviewToFront:self.inviteVC.view];
}

- (IBAction)onFBInviteButton:(id)sender {
    self.labelBGColor.backgroundColor = [UIColor colorWithRed:0.357 green:0.663 blue:0.992 alpha:1];
    //ccc3(91, 169, 253)
    self.textLabel.text = @"Invite from Facebook";
    
    self.chatNowButton.selected = NO;
    self.contactInviteButton.selected = NO;
    self.facebookInviteButton.selected = YES;
    
    [self.contactViewContainer bringSubviewToFront:self.inviteFacebookVC.view];
}
@end
