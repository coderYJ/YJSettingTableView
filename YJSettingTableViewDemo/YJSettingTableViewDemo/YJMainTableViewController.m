//
//  YJMainTableViewController.m
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/11.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import "YJMainTableViewController.h"
#import "YJScoreViewController.h"
#import "MBProgressHUD+YJ.h"

@interface YJMainTableViewController ()

@end

@implementation YJMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.title = @"coderYJ";
    
    /// 第0组
    [self setupGroup0];
    
    /// 第1组
    [self setupGroup1];
}
/// 第0组
- (void)setupGroup0{
    
    // 创建基本模型
    YJSettingItem *item0 = [YJSettingItem itemWithIcon:[UIImage imageNamed:@"handShake"] title:@"第0组第0行"];
    // 设置字体
    item0.titleFont = [UIFont systemFontOfSize:20];
    
    
    YJSettingItem *item1 = [YJSettingItem itemWithIcon:[UIImage imageNamed:@"more_historyorder"] title:@"第0组第1行"];
    item1.subTitle = @"我是子标题1";
    item1.subTitleFont = [UIFont systemFontOfSize:15];
    
    // 创建一个带图标, 标题 子标题的cell
    YJSettingItem *item2 = [YJSettingItem itemWithIcon:[UIImage imageNamed:@"more_homeshake"] title:@"第0组第1行" subTitle:@"我是子标题2"];
    item2.subTitleFont = [UIFont systemFontOfSize:17];
   
    
    YJSettingItem *item3 = [YJSettingItem itemWithTitle:@"第0组第3行"];
    item3.subTitle = @"我是子标题2";
    item3.subTitleFont = [UIFont systemFontOfSize:20];
    
    // 将行模型数组添加到组模型中
    YJSettingGroup *group =  [self addGroupWithItems:@[item0, item1, item2, item3]];
    // 设置这一组的头部标题
    group.headerTitle = @"xxoo";
    // 设置这一组的尾部标题
    group.footTitle = @"123";
}

/// 第1组
- (void)setupGroup1{
    // 创建箭头模型
    YJSettingArrowItem *item0 = [YJSettingArrowItem itemWithTitle:@"比分直播"];
    // 绑定目标控制器
    item0.desVc = [YJScoreViewController class];
    
    // 创建箭头模型
    YJSettingItem *item1 = [YJSettingArrowItem itemWithTitle:@"点我弹框"];
    // 点击这一行cell要做的操作
    item1.operationBlock =^(NSIndexPath *indexPath){
        [MBProgressHUD showSuccess:@"微信公众号关注coderYJ,持续更新实用的干货"];
    };
    
    YJSettingArrowItem *item2 = [YJSettingArrowItem itemWithTitle:@"传递参数"];
    
    // 防止循环引用
    __weak typeof(self) weakSelf = self;
    item2.operationBlock = ^(NSIndexPath *indexPath){
        UIViewController *vc = [[UIViewController alloc] init];
        vc.view.backgroundColor = [UIColor yellowColor];
        // 传递参数
        vc.title = @"xxoo";
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    YJSettingSwitchItem *item3 = [YJSettingSwitchItem itemWithTitle:@"第1组第3行"];
    item3.on = YES;
    
    // 将行模型数组添加到组模型中
    [self addGroupWithItems:@[item0, item1, item2, item3]];
}
@end
