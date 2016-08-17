//
//  YJSettingGroup.h
//  YJSettingTableViewDemo
//
//  Created by simplyou on 2016/8/11.
//  Copyright © 2016年 coderYJ. All rights reserved.
//  组模型

#import <Foundation/Foundation.h>

@interface YJSettingGroup : NSObject
/*这一组的头部标题*/
@property (nonatomic, copy) NSString *headerTitle;

/*这一组的尾部标题*/
@property (nonatomic, copy) NSString *footTitle;

/*这一组的行模型数组*/
@property (nonatomic, strong) NSArray *items;

/*工厂方法*/
+ (instancetype)groupWithItems:(NSArray *)items;

@end
