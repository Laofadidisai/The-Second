//
//  LHAppDelegate.m
//  MONImotificatonCenter
//
//  Created by 老李 on 15-10-26.
//  Copyright (c) 2015年 Alibaba. All rights reserved.
//

#import "LHAppDelegate.h"
#import "MONINotiCenter.h"
@implementation LHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //创建一个通知中心
    MONINotiCenter * cecnter = [MONINotiCenter defaultCenter];
    //注册一个通知
    [cecnter addObserver:self selector:@selector(tongzhihou) name:@"黄河呼叫长江" object:nil];
    
    UIButton * postBtn = [[UIButton alloc]initWithFrame:CGRectMake(60, 60, 60, 60)];
    postBtn.backgroundColor = [UIColor orangeColor];
    [postBtn addTarget:self action:@selector(postBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:postBtn];
    
    
    return YES;
}
-(void)tongzhihou
{
    NSLog(@"长江收到");
    
    
}
-(void)postBtn
{
    MONINotiCenter * noticenter = [MONINotiCenter defaultCenter];
    [noticenter postNotificationName:@"黄河呼叫长江" object:nil];
    
    
}
//程序进入后台时调用
-(void)applicationDidEnterBackground:(UIApplication *)application
{
   
    
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}


- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
