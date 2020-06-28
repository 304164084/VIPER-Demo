//
//  LoginView.m
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import "LoginView.h"
#import "Masonry.h"

@interface LoginView ()
<
UITextFieldDelegate
>

/** account textfield */
@property (nonatomic, strong) UITextField *accountTextField;
/** pwd textfield */
@property (nonatomic, strong) UITextField *pwdTextField;
/** login button */
@property (nonatomic, strong) UIButton *loginButton;

@end

@implementation LoginView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setupViews];
    }
    return self;
}

- (void)setupViews
{
    [self addSubview:self.accountTextField];
    [self.accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(100.);
        make.centerX.equalTo(self);
        make.width.equalTo(@(300.));
        make.height.equalTo(@(40.));
    }];
    
    [self addSubview:self.pwdTextField];
    [self.pwdTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.accountTextField.mas_bottom).offset(16.);
        make.centerX.equalTo(self.accountTextField);
        make.width.equalTo(self.accountTextField);
        make.height.equalTo(self.accountTextField);
    }];
    
    [self addSubview:self.loginButton];
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.pwdTextField.mas_bottom).offset(16.);
        make.centerX.equalTo(self.pwdTextField);
        make.width.equalTo(self.pwdTextField);
        make.height.equalTo(self.pwdTextField);
    }];
}

#pragma mark - Delegate & actions
- (void)actionLogin:(UIButton *)button
{
    if ([self.delegate respondsToSelector:@selector(loginView:loginButtonDidClicked:)]) {
        [self.delegate loginView:self loginButtonDidClicked:button];
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason
{
    if ([self.delegate respondsToSelector:@selector(loginView:textFieldDidEndEditing:reason:)]) {
        [self.delegate loginView:self textFieldDidEndEditing:textField reason:reason];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

#pragma mark - Public


#pragma mark - Getter
- (UITextField *)accountTextField
{
    if (!_accountTextField) {
        _accountTextField = [[UITextField alloc] init];
        _accountTextField.backgroundColor = [UIColor yellowColor];
        _accountTextField.placeholder = @"请输入账号";
        _accountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _accountTextField.tag = kTextFieldTypeAccount;
        _accountTextField.delegate = self;
    }
    return _accountTextField;
}

- (UITextField *)pwdTextField
{
    if (!_pwdTextField) {
        _pwdTextField = [[UITextField alloc] init];
        _pwdTextField.backgroundColor = [UIColor yellowColor];
        _pwdTextField.placeholder = @"请输入密码";
        _pwdTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _pwdTextField.tag = kTextFieldTypePwd;
        _pwdTextField.delegate = self;
    }
    return _pwdTextField;
}

- (UIButton *)loginButton
{
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _loginButton.backgroundColor = [UIColor greenColor];
        [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
        [_loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_loginButton addTarget:self action:@selector(actionLogin:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginButton;
}

@end
