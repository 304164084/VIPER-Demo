//
//  LoginInteractorIO.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//
#import "UserAccountEntity.h"
@protocol LoginInteractorInput <NSObject>

- (void)requestUserAccountInfo;
- (void)changeUserAccountEntity:(UserAccountEntity *)entity
                     completion:(void (^)(BOOL success))completion;

@end

@protocol LoginInteractorOutput <NSObject>

- (void)updateUserAccountEntity:(UserAccountEntity *)entity;

@end
