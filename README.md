      # DropdownDemo
     类QQ的下拉列表

     功能：
         1、类似于QQ好友列表的下拉功能。
     
        |
        
        |
        
        |
     
        特别注意：    1.所使用的宏在 JMPrefixHeader.pch文件

                    2.所使用的色值，按钮，标签在 Tools文件夹里
                    
                    3.使用cocoaPods引用了 ：Masonry，SDWebImage，YYModel第三方库
         
        |
        
        |
        
        |
     
      用法：

      下载本demo，pod install 后，直接运行; 
    
        |
        
        |
        
        |

    1.列表的打开与关闭
    
    - (void)touchAction:(JMTableViewSectionView *)sectionView {
    
    // 通过前面设置的tag值找到分区的index
    
    NSInteger index = sectionView.tag - 1000;
    
    JMFriendsGroupModel *model = [self.dataSourceArray objectAtIndex:index];
    
    // 每次点击, 状态变为与原来相反的值
    
    model.opened = !model.isOpened;
    
    [self.jm_tableView reloadSections:[NSIndexSet indexSetWithIndex:index] withRowAnimation:UITableViewRowAnimationFade];
    
    
    }

     |

     |

     |
    2.箭头旋转动画
 
        -(void)setModel:(JMFriendsGroupModel *)model{
        
        _model = model;
        
        self.title_lbl.text = [NSString stringWithFormat:@"%@(%lu)",model.groupName,(unsigned long)model.friendsList.count];
        
        [UIView animateWithDuration:0.3 animations:^{
        
        self.arrow_ima.transform = model.opened ? CGAffineTransformMakeRotation(M_PI_2) : CGAffineTransformMakeRotation(0);
        }];
        
        }
     |
  
     |
  
     |
    3.sectionView的点击代理
 
        -(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
        
        [self.delegate touchAction:self];
        
        }



    欢迎反馈问题，有用的话请给颗星，谢谢。
