//
//  LoginRouter.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginPresenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginRouter : NSObject

/** presenter */
@property (nonatomic, weak) LoginPresenter *presenter;

- (void)jumpWithSuccess:(BOOL)success;

@end

NS_ASSUME_NONNULL_END
