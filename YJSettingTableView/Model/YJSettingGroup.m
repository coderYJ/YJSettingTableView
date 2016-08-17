//
//  YJSettingGroup.m
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/11.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import "YJSettingGroup.h"

@implementation YJSettingGroup

+ (instancetype)groupWithItems:(NSArray *)items{
    YJSettingGroup *group = [[self alloc] init];
    
    group.items = items;
    
    return group;
}

@end
