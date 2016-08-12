//
//  YJScoreViewController.m
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/12.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import "YJScoreViewController.h"

@interface YJScoreViewController ()

@end

@implementation YJScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YJSettingItem *item0 = [YJSettingSwitchItem itemWithTitle:@"双色球" subTitle:@"每天开奖"];
    
    YJSettingItem *item1 = [YJSettingSwitchItem itemWithTitle:@"双色球" subTitle:@"每天开奖"];
    
    YJSettingItem *item2 = [YJSettingSwitchItem itemWithTitle:@"双色球" subTitle:@"每天开奖"];
    
    YJSettingItem *item3 = [YJSettingSwitchItem itemWithTitle:@"双色球" subTitle:@"每天开奖"];
    
    YJSettingItem *item4 = [YJSettingSwitchItem itemWithTitle:@"双色球" subTitle:@"每天开奖"];
    
    [self addGroupWithItems:@[item0, item1, item2, item3, item4]];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YJSettingTableViewCell *cell = [YJSettingTableViewCell cellWithTableView:tableView cellStyle:UITableViewCellStyleSubtitle];
    
    cell.detailTextLabel.font = [UIFont systemFontOfSize:10];
    
    // 从总数组中取出组模型数组
    YJSettingGroup *group = self.groups[indexPath.section];
    
    // 从行模型数组中取出行模型
    YJSettingItem *item = group.items[indexPath.row];
    // 传递模型
    cell.item = item;
    
    return cell;
}
@end
