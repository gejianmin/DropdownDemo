//
//  JMContactsListVC.m
//  DropdownDemo
//
//  Created by gejianmin on 2019/1/7.
//  Copyright © 2019 gejianmin. All rights reserved.
//

#import "JMContactsListVC.h"
#import "JMContactsListCell.h"
#import "JMFriendsGroupModel.h"
#import "JMTableViewSectionView.h"

@interface JMContactsListVC ()< UITableViewDelegate,UITableViewDataSource,JMTableViewSectionViewtouchActionDelegate >

@property (nonatomic, strong) UITableView * jm_tableView;
@property (nonatomic, strong) NSMutableArray *dataSourceArray;
@end

@implementation JMContactsListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"好友列表";
    [self.view addSubview:self.jm_tableView];
    [self getData];
}
#pragma mark -- 获取数据模型
-(void)getData{
    /** 此处为本地数据，代替网络请求的数据，如有需要，网络请求的数据格式需于本地数据格式一致，如不一致，自行处理数据*/
    NSArray * array = [NSArray yy_modelArrayWithClass:[JMFriendsGroupModel class] json:[JMFriendsGroupModel fetchDaraArray]];
    [self.dataSourceArray addObjectsFromArray:array];
    [self.jm_tableView reloadData];
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    JMTableViewSectionView *sectionView = [[JMTableViewSectionView alloc] initWithFrame:CGRectMake(0, 0, JM_SCREEN_W, [JMTableViewSectionView height])];
    sectionView.delegate = self;
    sectionView.tag = section + 1000;
    JMFriendsGroupModel *model = [self.dataSourceArray objectAtIndex:section];
    sectionView.model = model;
    return sectionView;
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView * view =[[UIView alloc]initWithFrame:CGRectZero];
    return view;
}
#pragma mark -- sectionView Delegate
- (void)touchAction:(JMTableViewSectionView *)sectionView {
    // 通过前面设置的tag值找到分区的index
    NSInteger index = sectionView.tag - 1000;
    JMFriendsGroupModel *model = [self.dataSourceArray objectAtIndex:index];
    // 每次点击, 状态变为与原来相反的值
    model.opened = !model.isOpened;
    [self.jm_tableView reloadSections:[NSIndexSet indexSetWithIndex:index] withRowAnimation:UITableViewRowAnimationFade];
}
#pragma mark - TableView DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSourceArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    JMFriendsGroupModel *group = [self.dataSourceArray objectAtIndex:section];
    return group.opened?group.friendsList.count:0;
}
#pragma mark - TableView Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JMContactsListCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([JMContactsListCell class])];
    JMFriendsGroupModel *friendGroup = self.dataSourceArray[indexPath.section];
    JMFriendsModel *friend = [JMFriendsModel yy_modelWithJSON:friendGroup.friendsList[indexPath.row]];
    cell.model = friend;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    JMFriendsGroupModel *friendGroup = self.dataSourceArray[indexPath.section];
    JMFriendsModel *friend = [JMFriendsModel yy_modelWithJSON:friendGroup.friendsList[indexPath.row]];
    NSLog(@"获取个人信息：比如昵称:\n%@",friend.name);
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return [JMTableViewSectionView height];
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.0f;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [JMContactsListCell height];
}
-(UITableView *)jm_tableView{
    if (_jm_tableView == nil) {
        _jm_tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, JM_SCREEN_W, JM_SCREEN_H) style:UITableViewStylePlain];
        _jm_tableView.delegate = self;
        [_jm_tableView setBackgroundColor:COLORHEX(0xf9f9f9)];
        _jm_tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];/** 去掉多余cell*/
        _jm_tableView.dataSource = self;
        [_jm_tableView registerClass:[JMContactsListCell class] forCellReuseIdentifier:NSStringFromClass([JMContactsListCell class])];
    }
    return _jm_tableView;
}
-(NSMutableArray *)dataSourceArray{
    if (_dataSourceArray == nil) {
        _dataSourceArray = [[NSMutableArray alloc]initWithCapacity:0];
    }
    return _dataSourceArray;
}

@end
