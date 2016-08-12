//
//  YJSettingTableViewController.h
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/10.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YJSettingTableViewCell.h"

@interface YJSettingTableViewController : UITableViewController
/**
 *  数组总数
 */
@property (nonatomic, strong) NSMutableArray *groups;

// 将行模型数组添加到这一组
- (YJSettingGroup *)addGroupWithItems:(NSArray *)items;

@end
