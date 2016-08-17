//
//  YJSettingTableViewCell.m
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/10.
//  Copyright © 2016年 coderYJ. All rights reserved.
//

// 获取bundle中文件的路径
#define YJPathResoce(name) [[[NSBundle mainBundle] pathForResource:@"YJSettingTableView.bundle" ofType:nil] stringByAppendingPathComponent:name]

#import "YJSettingTableViewCell.h"

@implementation YJSettingTableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    
    return [self cellWithTableView:tableView cellStyle:UITableViewCellStyleValue1];
}
/*  快速创建tableViewCell**/
+ (instancetype)cellWithTableView:(UITableView *)tableView cellStyle:(UITableViewCellStyle)cellStyle{
    static NSString *ID = @"YJSettingTableViewCell";
    
    YJSettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[YJSettingTableViewCell alloc] initWithStyle:cellStyle reuseIdentifier:ID];
    }
    return cell;
}

- (void)setItem:(YJSettingItem *)item{
    _item = item;
    
    // 1.设置数据
    self.textLabel.text = item.title;
    self.textLabel.font = item.titleFont;
    
    self.detailTextLabel.text = item.subTitle;
    self.detailTextLabel.font = item.subTitleFont;
    
    self.imageView.image = item.icon;
    
    // 2.设置右侧视图
    [self setupRightView];
}

/// 设置右侧视图
- (void)setupRightView{
    
    if ([self.item isKindOfClass:[YJSettingArrowItem class]]) {
        // 右侧视图是箭头
        UIImage *arrowImage = [UIImage imageWithContentsOfFile:YJPathResoce(@"arrow_right")];
        
        self.accessoryView = [[UIImageView alloc] initWithImage:arrowImage];
        
    }else if([self.item isKindOfClass:[YJSettingSwitchItem class]]){
        
        YJSettingSwitchItem *swItem = (YJSettingSwitchItem *)self.item;
        UISwitch *sw = [[UISwitch alloc] init];
        sw.on = swItem.isOn;
        
        self.accessoryView = sw;
    }else{
        
        self.accessoryView = nil;
    }
}
@end
