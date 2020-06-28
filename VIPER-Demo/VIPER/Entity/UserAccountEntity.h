//
//  UserAccountEntity.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserAccountEntity : NSObject

/** account */
@property (nonatomic, copy) NSString *account;
/** pwd */
@property (nonatomic, copy) NSString *pwd;
/** oudate time */
@property (nonatomic, copy) NSString *outdateTime;

@end

NS_ASSUME_NONNULL_END
