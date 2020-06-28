//
//  LoginPresenter.m
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginInteractor.h"
#import "LoginRouter.h"

@interface LoginPresenter ()


@end

@implementation LoginPresenter

- (instancetype)init
{
    if (self = [super init]) {
        [self configuration];
    }
    return self;
}

- (void)configuration
{
    LoginInteractor *interactor = [LoginInteractor new];
    interactor.presenter = self;
    self.interactor = interactor;
}

#pragma mark - LoginView delegate
#pragma mark 业务逻辑
- (void)loginView:(UIView *)loginView loginButtonDidClicked:(UIButton *)button
{
    // router跳转登陆成功or失败的界面
    UserAccountEntity *entity = [UserAccountEntity new];
    entity.account = [self.view getAccount];
    entity.pwd = [self.view getPwd];
    
    [self.interactor changeUserAccountEntity:entity completion:^(BOOL success) {
        /** router ps: 这里只是为了带上router. 如果使用MGJRouter, CTMediator都有类方法提供. 只需要导入头文件即可 */
                    LoginRouter *router = [LoginRouter new];
                    router.presenter = self;
                    [router jumpWithSuccess:success];
    }];
}

- (void)loginView:(UIView *)loginView textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason
{
    // 更新interactor
}

#pragma mark LoginInteractorOutput
- (void)updateUserAccountEntity:(UserAccountEntity *)entity
{
    [self.view setAccount:entity.account];
    [self.view setPwd:entity.pwd];
}

#pragma mark - Public
- (void)updateView
{
    [self.interactor requestUserAccountInfo];
}


@end
