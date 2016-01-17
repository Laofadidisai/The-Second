//
//  MONINotification.h
//  MONImotificatonCenter
//
//  Created by 老李 on 15-10-26.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

//自定义的通知类
#import <Foundation/Foundation.h>

@interface MONINotification : NSObject
//谁注册了通知，收到通知后做了什么事，通知的名字
@property(nonatomic,assign)id observer;
@property(nonatomic,assign)SEL selector;
@property(nonatomic,copy)NSString * name;

@end
