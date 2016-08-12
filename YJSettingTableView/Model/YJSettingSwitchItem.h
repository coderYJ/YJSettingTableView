//
//  YJSettingSwitchItem.h
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/11.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import "YJSettingItem.h"

@interface YJSettingSwitchItem : YJSettingItem

/*这一行cell的右侧视图开关状态*/
@property (nonatomic, assign, getter=isOn) BOOL on;

@end
