//
//  MONINotiCenter.m
//  MONImotificatonCenter
//
//  Created by 老李 on 15-10-26.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

#import "MONINotiCenter.h"
#import "MONINotification.h"
@implementation MONINotiCenter

static MONINotiCenter * defaultsCenter = nil;

+ (MONINotiCenter*)defaultCenter
{
    if (defaultsCenter == nil)
    {
        defaultsCenter = [[MONINotiCenter alloc]init];
    }
    return defaultsCenter;
    //NSNotificationCenter
}

+ (id)alloc
{
    if (defaultsCenter == nil)
    {
        defaultsCenter = [super alloc];
    }
    return defaultsCenter;
}
- (id)init
{
    if (self = [super init])
    {
        notificationsArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}
//订阅通知的方法
- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject
{
    //实质上就是创建一个通知对象,将其放进通知数组里
    MONINotification * tongzhi = [MONINotification new];
    //[类名 new]相当于[[类名 alloc]init]
    
    tongzhi.observer = observer;
    tongzhi.selector = aSelector;
    tongzhi.name = aName;
    //将通知放进数组里
    [notificationsArray addObject:tongzhi];
    
    
    
    
}
//发送通知的方法
- (void)postNotificationName:(NSString *)aName object:(id)anObject
{
    //遍历通知数组，找到注册对应通知的对象
    for (MONINotification * tongzhi in notificationsArray)
    {
        if ([tongzhi.name isEqualToString:aName])
        {
            //由于调用的方法是未知的，所以系统会报警告（可能引发泄露）
            [tongzhi.observer performSelector:tongzhi.selector withObject:nil];
        }
    }
 
    
}



@end





























