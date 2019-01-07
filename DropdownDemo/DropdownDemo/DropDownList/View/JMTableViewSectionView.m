//
//  JMTableViewSectionView.m
//  DropdownDemo
//
//  Created by gejianmin on 2019/1/7.
//  Copyright © 2019 gejianmin. All rights reserved.
//

#import "JMTableViewSectionView.h"

@implementation JMTableViewSectionView

-(instancetype)initWithFrame:(CGRect)frame{
    if ([super initWithFrame:frame]) {
        [self setBackgroundColor:JTD_MAIN_BG_COLOR];
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    [self addSubview:self.arrow_ima];
    [self.arrow_ima mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(15);
        make.centerY.equalTo(self);
        make.width.equalTo(@6.5);
        make.height.equalTo(@11);
    }];
    [self addSubview:self.title_lbl];
    [self.title_lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.arrow_ima.mas_right).offset(5);
        make.centerY.equalTo(self.arrow_ima.mas_centerY);
    }];
    UIView * lineView = [[UIView alloc]initWithFrame:CGRectZero];
    [lineView setBackgroundColor:kColorDADADA];
    [self addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_bottom).offset(-1);
        make.left.equalTo(self).offset(0);
        make.right.equalTo(self).offset(0);
        make.height.equalTo(@1);
    }];
    
}
-(void)setModel:(JMFriendsGroupModel *)model{
    _model = model;
    self.title_lbl.text = [NSString stringWithFormat:@"%@(%lu)",model.groupName,(unsigned long)model.friendsList.count];
    [UIView animateWithDuration:0.3 animations:^{
        self.arrow_ima.transform = model.opened ? CGAffineTransformMakeRotation(M_PI_2) : CGAffineTransformMakeRotation(0);
    }];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.delegate touchAction:self];
}
-(UIImageView *)arrow_ima{
    if (_arrow_ima == nil) {
        _arrow_ima = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"arrow_right"]];
    }
    return _arrow_ima;
}
-(CustomLab *)title_lbl{
    if (_title_lbl == nil) {
        _title_lbl = [[CustomLab alloc]initWithFrame:CGRectZero font:15 aligment:NSTextAlignmentLeft text:@"" textcolor:[UIColor blackColor]];
    }
    return _title_lbl;
}
+(CGFloat )height{
    return 49.0f;
}
@end
