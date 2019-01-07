//
//  JMTableViewSectionView.h
//  DropdownDemo
//
//  Created by gejianmin on 2019/1/7.
//  Copyright © 2019 gejianmin. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JMFriendsGroupModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JMTableViewSectionView;

@protocol JMTableViewSectionViewtouchActionDelegate <NSObject>
@optional

- (void)touchAction:(JMTableViewSectionView *)sectionView;

@end

@interface JMTableViewSectionView : UIView

@property(nonatomic,weak) id<JMTableViewSectionViewtouchActionDelegate> delegate;
@property(nonatomic,strong) UIImageView  * arrow_ima;
@property(nonatomic,strong) CustomLab  * title_lbl;
@property(nonatomic,strong) JMFriendsGroupModel  * model;

+(CGFloat )height;

@end

NS_ASSUME_NONNULL_END
