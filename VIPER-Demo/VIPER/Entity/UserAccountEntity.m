//
//  UserAccountEntity.m
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import "UserAccountEntity.h"

static NSString *const kSalt = @"852963741";

@interface UserAccountEntity ()
{
    NSString *_pwd;
}

@end

@implementation UserAccountEntity

@dynamic pwd;
- (void)setPwd:(NSString *)pwd
{
    // 加盐
//    NSString *afterSalt = [NSString stringWithFormat:@"%@%@", kSalt, pwd];
    // 再使用散列函数进行计算, 防篡改
    _pwd = pwd;
}

- (NSString *)pwd
{
    // 获取不到真实的用户密码
    return _pwd;
}



@end
