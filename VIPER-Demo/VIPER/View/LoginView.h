//
//  LoginView.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewProtocol.h"

NS_ASSUME_NONNULL_BEGIN



@interface LoginView : UIView

/** delegate */
@property (nonatomic, weak) id<LoginViewOutput> delegate;
/** account textfield */
@property (nonatomic, strong, readonly) UITextField *accountTextField;
/** pwd textfield */
@property (nonatomic, strong, readonly) UITextField *pwdTextField;
/** login button */
@property (nonatomic, strong, readonly) UIButton *loginButton;


@end

NS_ASSUME_NONNULL_END
