//
//  MONINotiCenter.h
//  MONImotificatonCenter
//
//  Created by 老李 on 15-10-26.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

//自定义通知中心
#import <Foundation/Foundation.h>

@interface MONINotiCenter : NSObject

{
    //用于存放通知
    NSMutableArray* notificationsArray;
}
//用于返回通知中心的单一实例
+ (MONINotiCenter*)defaultCenter;

- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject;
- (void)postNotificationName:(NSString *)aName object:(id)anObject;

@end
