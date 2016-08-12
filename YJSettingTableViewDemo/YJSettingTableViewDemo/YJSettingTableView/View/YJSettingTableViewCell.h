//
//  YJSettingTableViewCell.h
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/10.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YJSettingItem.h"
#import "YJSettingGroup.h"
#import "YJSettingSwitchItem.h"
#import "YJSettingArrowItem.h"

@interface YJSettingTableViewCell : UITableViewCell

/*  快速创建tableViewCell **/
+ (instancetype)cellWithTableView:(UITableView *)tableView;

/*  
 * 快速创建tableViewCell
 * cellStyle  cell的样式
 **/
+ (instancetype)cellWithTableView:(UITableView *)tableView cellStyle:(UITableViewCellStyle)cellStyle;

/*  cell的模型 **/
@property (nonatomic, strong) YJSettingItem *item;

@end
