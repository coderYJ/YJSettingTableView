//
//  YJSettingItem.m
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/10.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

#import "YJSettingItem.h"

@implementation YJSettingItem

- (instancetype)init{
    
    self.titleFont = [UIFont systemFontOfSize:17];
    self.subTitleFont = [UIFont systemFontOfSize:15];
    
    return [super init];
}

#pragma mark - 工厂方法/类方法

+ (instancetype)itemWithIcon:(UIImage *)icon title:(NSString *)title subTitle:(NSString *)subTitle{
    YJSettingItem *item = [[self alloc] init];
    item.icon = icon;
    item.title = title;
    item.subTitle = subTitle;
    
    return item;
}

+ (instancetype)itemWithIcon:(UIImage *)icon title:(NSString *)title{
    return [self itemWithIcon:icon title:title subTitle:nil];
}

+ (instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle{
    return [self itemWithIcon:nil title:title subTitle:subTitle];
}
+ (instancetype)itemWithTitle:(NSString *)title{
    return [self itemWithIcon:nil title:title subTitle:nil];
}
@end
