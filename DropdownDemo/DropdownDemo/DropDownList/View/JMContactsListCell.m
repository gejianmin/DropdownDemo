//
//  JMContactsListCell.m
//  DropdownDemo
//
//  Created by gejianmin on 2019/1/7.
//  Copyright © 2019 gejianmin. All rights reserved.
//

#import "JMContactsListCell.h"

@implementation JMContactsListCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
        self.backgroundColor = kColorFFFFFF;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

-(void)initUI{

    [self.contentView addSubview:self.icon_ima];
    [self.icon_ima mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).offset(15);
        make.centerY.equalTo(self.contentView.mas_centerY).offset(0);
        make.width.height.equalTo(@41);
    }];
    [self.contentView addSubview:self.name_lbl];
    [self.name_lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.icon_ima.mas_right).offset(7);
        make.top.equalTo(self.icon_ima.mas_top).offset(0);
    }];
    [self.contentView addSubview:self.detail_lbl];
    [self.detail_lbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.icon_ima.mas_right).offset(7);
        make.bottom.equalTo(self.icon_ima.mas_bottom).offset(0);
        make.right.equalTo(self.contentView.mas_right).offset(-15);
    }];
    
}
-(void)setModel:(JMFriendsModel *)model{
    _model = model;
    self.name_lbl.text = model.name;
    self.detail_lbl.text = model.detail;

    [self.icon_ima sd_setImageWithURL:[NSURL URLWithString:model.headImg] placeholderImage:nil];
}
-(UIImageView *)icon_ima{
    if (_icon_ima == nil) {
        _icon_ima = [[UIImageView alloc]init];
        [_icon_ima setBackgroundColor:JTD_MAIN_BG_COLOR];
        _icon_ima.clipsToBounds = YES;
        _icon_ima.layer.masksToBounds = YES;
        _icon_ima.layer.cornerRadius = 20.5;
    }
    return _icon_ima;
}
-(CustomLab *)name_lbl{
    if (_name_lbl == nil) {
        _name_lbl = [[CustomLab alloc]initWithFrame:CGRectZero font:14.0 aligment:NSTextAlignmentLeft text:@"" textcolor:[UIColor blackColor]];
        _name_lbl.numberOfLines = 0;
    }
    return _name_lbl;
}
-(CustomLab *)detail_lbl{
    if (_detail_lbl == nil) {
        _detail_lbl = [[CustomLab alloc]initWithFrame:CGRectZero font:13.0 aligment:NSTextAlignmentLeft text:@"" textcolor:[UIColor grayColor]];
    }
    return _detail_lbl;
}
+(CGFloat )height{
    return 59.0f;
}
- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
