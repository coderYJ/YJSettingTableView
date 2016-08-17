//
//  YJSettingItem.h
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/10.
//  Copyright © 2016年 coderYJ. All rights reserved.
//  行模型

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YJSettingItem : NSObject

/**
 *  这一行的标题
 */
@property (nonatomic, copy) NSString *title;
/**
 *  这一行标题的大小, 默认17
 */
@property (nonatomic, strong) UIFont *titleFont;

/**
 *  这一行的子标题
 */
@property (nonatomic, copy) NSString *subTitle;
/**
 *  这一行子标标题的大小, 默认15
 */
@property (nonatomic, strong) UIFont *subTitleFont;

/**
 *  这一行的图标
 */
@property (nonatomic, strong) UIImage *icon;

/**
 *  点击这一行cell要做的操作
 */
@property (nonatomic, copy) void(^operationBlock)(NSIndexPath *indexPath);

/**
 *  快速创建一个有图标,标题,子标题的行模型
 *
 *  @param icon     图标
 *  @param title    标题
 *  @param subTitle 子标题
 *
 *  @return 一个创建好的模型,有图标,标题,子标题
 */
+ (instancetype)itemWithIcon:(UIImage *)icon title:(NSString *)title subTitle:(NSString *)subTitle;
/**
 *  快速创建一个有图标,标题的行模型
 *
 *  @param icon  图标
 *  @param title 标题
 *
 *  @return 一个创建好的模型,有图标,标题
 */
+ (instancetype)itemWithIcon:(UIImage *)icon title:(NSString *)title;
/**
 *  快速创建一个有标题,子标题的行模型
 *
 *  @param title    标题
 *  @param subTitle 子标题
 *
 *  @return 一个创建好的模型,标题,子标题
 */
+ (instancetype)itemWithTitle:(NSString *)title subTitle:(NSString *)subTitle;
/**
 *  快速创建一个有标题的行模型
 *
 *  @param title 标题
 *
 *  @return 一个创建好的模型,有标题
 */
+ (instancetype)itemWithTitle:(NSString *)title;
@end
