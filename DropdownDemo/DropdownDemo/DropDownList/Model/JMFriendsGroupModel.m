//
//  JMFriendsGroupModel.m
//  DropdownDemo
//
//  Created by gejianmin on 2019/1/7.
//  Copyright © 2019 gejianmin. All rights reserved.
//

#import "JMFriendsGroupModel.h"

@implementation JMFriendsGroupModel

+(NSMutableArray *)fetchDaraArray{
    NSString * headImg_boy = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546860572565&di=7a3304356b9bdca9956ce8bd032e80bd&imgtype=0&src=http%3A%2F%2Ftx.haiqq.com%2Fuploads%2Fallimg%2F170918%2F0U01KJ8-2.jpg";
    NSString * headImg_girl = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546860645838&di=900f81236ddf43a926e5d0b86fd3a6a0&imgtype=0&src=http%3A%2F%2Fimg2.woyaogexing.com%2F2018%2F01%2F16%2F54e57c225ae282fc%2521400x400_big.jpg";
    
    NSMutableArray *dataArr =[NSMutableArray arrayWithArray: @[
                                                               @{@"groupName":@"足球圈",
                                                                 @"friendsList":@[
                                                                         @{@"name":@"梅西",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[WiFi在线]本赛季西甲冠军到手",
                                                                           },
                                                                         @{@"name":@"C.罗纳尔多",
                                                                           @"headImg":headImg_girl,
                                                                           @"detail":@"[4G在线]皇马，呵呵",
                                                                           },
                                                                         ]
                                                                 },
                                                               @{@"groupName":@"篮球圈",
                                                                 @"friendsList":@[
                                                                         @{@"name":@"勒布朗.詹姆斯",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[WiFi在线]太棒了，这里有WiFi",
                                                                           },
                                                                         @{@"name":@"姚明",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[WiFi在线]中国篮球，亚洲一流",
                                                                           },
                                                                         @{@"name":@"韦德",
                                                                           @"headImg":headImg_girl,
                                                                           @"detail":@"[电脑在线]用老詹玩2K就是爽",
                                                                           },
                                                                         @{@"name":@"科比",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[离线]你见过洛杉矶凌晨4点的太阳吗~~~，老詹湖人的复兴就靠你了，加油，兄弟",
                                                                           },
                                                                         @{@"name":@"邓肯",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[在线]去爬爬长城",
                                                                           },
                                                                         ]},
                                                               @{@"groupName":@"老朋友",
                                                                 @"friendsList":@[
                                                                         @{@"name":@"比尔.盖茨",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[在线]想当年我也是世界上最有钱的人",
                                                                           },
                                                                         @{@"name":@"马云",
                                                                           @"headImg":headImg_girl,
                                                                           @"detail":@"[在线]我对钱没什么概念",
                                                                           },
                                                                         @{@"name":@"李彦宏",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[在线]百度一下",
                                                                           },
                                                                         @{@"name":@"马化腾",
                                                                           @"headImg":headImg_girl,
                                                                           @"detail":@"[在线]匹配刺激战场，在线等...",
                                                                           },
                                                                         @{@"name":@"东哥",
                                                                           @"headImg":headImg_girl,
                                                                           @"detail":@"[在线]京东就是快",
                                                                           },
                                                                         @{@"name":@"老雷",
                                                                           @"headImg":headImg_boy,
                                                                           @"detail":@"[在线]小米新产品，你值得拥有~~~",
                                                                           },
                                                                         ]},
                                                               ]];
    
    return dataArr;
}

@end

@implementation JMFriendsModel


@end
