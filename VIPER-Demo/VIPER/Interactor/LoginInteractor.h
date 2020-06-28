//
//  LoginInteractor.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginInteractorIO.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginInteractor : NSObject
<
LoginInteractorInput
>

/** presenter */
@property (nonatomic, weak) id<LoginInteractorOutput> presenter;


@end

NS_ASSUME_NONNULL_END
