//
//  LoginViewController.m
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginView.h"
#import "LoginPresenter.h"

@interface LoginViewController ()
<
LoginViewInput
>

@property (nonatomic, strong) LoginView *loginView;
/** presenter */
@property (nonatomic, strong) LoginPresenter *loginPresenter;

@end

@implementation LoginViewController

#pragma mark - Life Cycle
- (void)loadView {
    [super loadView];
    [self configurationView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configurationPresenter];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.loginPresenter updateView];
}

#pragma mark - Configuration
- (void)configurationPresenter
{
    // config presenter
    self.loginPresenter.view = self;
}

- (void)configurationView
{
    self.loginView.delegate = self.loginPresenter;
    [self.view addSubview:self.loginView];
    self.loginView.frame = self.view.bounds;
}

#pragma mark -  View input by presenter
- (void)setAccount:(NSString *)act
{
    self.loginView.accountTextField.text = act;
}

- (void)setPwd:(NSString *)pwd
{
    self.loginView.pwdTextField.text = pwd;
}

#pragma mark - public
- (NSString *)getAccount
{
    return self.loginView.accountTextField.text;
}

- (NSString *)getPwd
{
    return self.loginView.pwdTextField.text;
}

#pragma mark - Getter
- (UIView *)loginView
{
    if (!_loginView) {
        _loginView = [[LoginView alloc] initWithFrame:CGRectZero];
        _loginView.backgroundColor = [UIColor colorWithRed:69. / 255. green:69. / 255. blue:69. / 255. alpha:1.];
    }
    return _loginView;
}

- (LoginPresenter *)loginPresenter
{
    if (!_loginPresenter) {
        _loginPresenter = [LoginPresenter new];
    }
    return _loginPresenter;
}

@end
