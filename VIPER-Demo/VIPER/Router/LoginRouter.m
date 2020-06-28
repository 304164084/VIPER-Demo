//
//  LoginRouter.m
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import "LoginRouter.h"
#import "AfterLoginViewController.h"
#import "LoginViewController.h"

@implementation LoginRouter

- (void)jumpWithSuccess:(BOOL)success
{
    LoginViewController *loginVC = ((LoginViewController *)self.presenter.view);
    if (success) {
        AfterLoginViewController *vc = [AfterLoginViewController new];
        vc.modalPresentationStyle = UIModalPresentationAutomatic;
        [loginVC presentViewController:vc animated:YES completion:nil];
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"失败" message:@"密码错误" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"emmm~");
        }];
        [alert addAction:ok];
        [loginVC presentViewController:alert animated:YES completion:nil];
    }
    
}

@end
