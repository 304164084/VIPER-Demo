//
//  LoginViewProtocol.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LoginView;

typedef NS_ENUM(NSInteger, kTextFieldType) {
    kTextFieldTypeAccount = 1,
    kTextFieldTypePwd
};

@protocol LoginViewInput <NSObject>

- (void)setAccount:(NSString *)act;
- (void)setPwd:(NSString *)pwd;

- (NSString *)getAccount;
- (NSString *)getPwd;

@end

@protocol LoginViewOutput <NSObject>

- (void)loginView:(LoginView *)loginView loginButtonDidClicked:(UIButton *)button;

- (void)loginView:(LoginView *)loginView textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason;

@end

