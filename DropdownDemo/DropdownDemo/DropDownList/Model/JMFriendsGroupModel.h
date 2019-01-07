//
//  JMFriendsGroupModel.h
//  DropdownDemo
//
//  Created by gejianmin on 2019/1/7.
//  Copyright © 2019 gejianmin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class JMFriendsModel;
@interface JMFriendsGroupModel : NSObject

@property (nonatomic, copy) NSString *groupName;/** 群组名称*/
@property (nonatomic, copy) NSString *imGroupId;
@property (nonatomic, strong) NSMutableArray<JMFriendsModel *> *friendsList;

/** 用来判断分组是否打开(opened属性正是实现下拉列表的关键)*/
@property (nonatomic, assign, getter = isOpened) BOOL opened;

+(NSMutableArray *)fetchDaraArray;/** 数据模型*/

@end

@interface JMFriendsModel : NSObject

@property (nonatomic, copy) NSString *  name;
@property(nonatomic,strong) NSString  * headImg;
@property(nonatomic,strong) NSString  * detail;

@end
NS_ASSUME_NONNULL_END
