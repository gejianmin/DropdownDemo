//
//  JMContactsListCell.h
//  DropdownDemo
//
//  Created by gejianmin on 2019/1/7.
//  Copyright © 2019 gejianmin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JMFriendsGroupModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface JMContactsListCell : UITableViewCell

@property(nonatomic,strong)CustomLab * name_lbl;
@property(nonatomic,strong)CustomLab * detail_lbl;
@property(nonatomic,strong)UIImageView * icon_ima;
@property(nonatomic,strong)JMFriendsModel * model;

+(CGFloat )height;

@end

NS_ASSUME_NONNULL_END
