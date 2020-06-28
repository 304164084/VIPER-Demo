//
//  LoginPresenter.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewProtocol.h"
#import "LoginInteractorIO.h"


NS_ASSUME_NONNULL_BEGIN

@interface LoginPresenter : NSObject
<
LoginInteractorOutput,
LoginViewOutput
>

/** view */
@property (nonatomic, weak) id<LoginViewInput> view;
/** interactor */
@property (nonatomic, strong) id<LoginInteractorInput> interactor;


- (void)updateView;

@end

NS_ASSUME_NONNULL_END
