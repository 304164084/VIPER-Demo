//
//  summary.h
//  VIPER-Demo
//
//  Created by suibanglin on 2020/6/28.
//  Copyright © 2020 banglin. All rights reserved.
//

#ifndef summary_h
#define summary_h


#endif /* summary_h */

/**
 总结VIPER:
 1. viper大体分为5部分: view、interactor、presenter、entity、router
        view包括 UIView & UIViewController;
        interactor处理纯业务层逻辑, 比如数据的增删改查, 不涉及UI的操作;
        presenter处理界面层逻辑, 比如用户的输入, 服务器的输入;
        entity等同于model, 主要负责数据模型化, 也可以对轻量级的数据进行简单处理, 如果需要处理复杂的逻辑, 建议新增专一负责数据处理的类文件<e.g. data store>;
        router路由, 用作界面跳转;
 2. 各部分的关系
        1) UIView & UIViewController 和其他架构一样, 这里统一看做View(以下统称view), 但是主要使用UIViewController与presenter部分进行交互.
 
        2) 各部分的关系如图 VIPER架构关系图.png 中所示.
        
        3) view、presenter、interactor 是核心的3部分, 他们之间的持有关系一般是从左到右强持有, 从右到左弱持有; 其他部分 presenter中含有router; interactor中可能持有data store.
        ///// data store: 对数据进行加工的类.
        
        4) 具体实现时, presenter从interactor获取数据, 然后经过界面逻辑处理后, 再将数据发送给view, view更新UI.
        可以对view, interactor 使用协议.
 */
