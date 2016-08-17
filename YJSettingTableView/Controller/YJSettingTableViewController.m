//
//  YJSettingTableViewController.m
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/10.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import "YJSettingTableViewController.h"

@interface YJSettingTableViewController ()

@end

@implementation YJSettingTableViewController
- (NSMutableArray *)groups{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}
- (instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}
- (YJSettingGroup *)addGroupWithItems:(NSArray *)items{
    
    // 安全校验
    if (items.count == 0) return nil;
    
    // 创建组模型
    YJSettingGroup *group = [YJSettingGroup groupWithItems:items];
    
    // 将组模型添加到数组总数中
    [self.groups addObject:group];
    
    return group;
}
- (void)viewDidLoad {
    [super viewDidLoad];
 
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // 取出行组型数组
    YJSettingGroup *group = self.groups[section];
    
    return group.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YJSettingTableViewCell *cell = [YJSettingTableViewCell cellWithTableView:tableView];
    
    // 从总数组中取出组模型数组
    YJSettingGroup *group = self.groups[indexPath.section];
    
    // 从行模型数组中取出行模型
    YJSettingItem *item = group.items[indexPath.row];
    // 传递模型
    cell.item = item;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // 点击cell选中消失效果
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 从总数组中取出组模型数组
    YJSettingGroup *group = self.groups[indexPath.section];
    
    // 从行模型数组中取出行模型
    YJSettingItem *item = group.items[indexPath.row];
    
    if (item.operationBlock) {
        item.operationBlock(indexPath);
    }else if ([item isKindOfClass:[YJSettingArrowItem class]]) {
        // 只有剪头模型才具备跳转功能
        YJSettingArrowItem *arrowItem = (YJSettingArrowItem *)item;
        
        if (arrowItem.desVc) {
            // 有目标控制器
            // 拿到目标控制器类名 创建目标控制器
            UIViewController *vc = [[arrowItem.desVc alloc] init];
            vc.title = arrowItem.title;
            
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    // 取出组模型
    YJSettingGroup *group =  self.groups[section];
    return group.headerTitle;
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:   (NSInteger)section{
    // 取出组模型
    YJSettingGroup *group =  self.groups[section];
    return group.footTitle;
}

@end
