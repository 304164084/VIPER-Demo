//
//  LoginInteractor.m
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import "LoginInteractor.h"

@implementation LoginInteractor

- (void)requestUserAccountInfo {
    NSString *account = [[NSUserDefaults standardUserDefaults] objectForKey:@"account"];
    NSString *pwd = [[NSUserDefaults standardUserDefaults] objectForKey:@"pwd"];
    NSString *outdateTime = [[NSUserDefaults standardUserDefaults] objectForKey:@"outdateTime"];
    UserAccountEntity *entity = [UserAccountEntity new];
    entity.account = account;
    entity.pwd = pwd;
    entity.outdateTime = outdateTime;
    
    [self.presenter updateUserAccountEntity:entity];
}

- (void)changeUserAccountEntity:(UserAccountEntity *)entity completion:(void (^)(BOOL success))completion
{
    if ([entity.account isEqualToString:@"123"] && [entity.pwd isEqualToString:@"123"]) {
        // store info
        [[NSUserDefaults standardUserDefaults] setObject:entity.account forKey:@"account"];
        [[NSUserDefaults standardUserDefaults] setObject:entity.pwd forKey:@"pwd"];
        
        completion(YES);
    }
    else {
        completion(NO);
    }
    
}

@end
