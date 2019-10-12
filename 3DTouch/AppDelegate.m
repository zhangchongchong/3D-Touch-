//
//  AppDelegate.m
//  3DTouch
//
//  Created by 张冲 on 2018/2/27.
//  Copyright © 2018年 张冲. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    UIApplicationShortcutItem * shortcutItem = [launchOptions valueForKey:UIApplicationLaunchOptionsShortcutItemKey];
    if (shortcutItem) {
        if ([shortcutItem.type isEqualToString:@"com.zhangcc.one"]) {
            NSLog(@"这是第一个按钮");
            self.window.rootViewController.view.backgroundColor  = [UIColor redColor];
        }else if ([shortcutItem.type isEqualToString:@"com.zhangcc.two"]){
            NSLog(@"这是第二个按钮");
            self.window.rootViewController.view.backgroundColor  = [UIColor yellowColor];

        }else if ([shortcutItem.type isEqualToString:@"com.zhangcc.third"]){
            NSLog(@"这是第三个按钮");
            self.window.rootViewController.view.backgroundColor  = [UIColor blueColor];

        }else if ([shortcutItem.type isEqualToString:@"com.zhangcc.four"]){
            NSLog(@"这是第四个按钮");
            self.window.rootViewController.view.backgroundColor  = [UIColor orangeColor];

        }
        return NO;
    }
    // Override point for customization after application launch.
    return YES;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler{
    if (shortcutItem) {
        ViewController *vc =(ViewController *) self.window.rootViewController;

        if ([shortcutItem.type isEqualToString:@"com.zhangcc.one"]) {
            NSLog(@"app没被杀死 这是第一个按钮");
            NSLog(@"------------%@", shortcutItem.userInfo);
            self.window.rootViewController.view.backgroundColor  = [UIColor redColor];
            vc.textLabel.text = @"程序没被杀死,这是第一个按钮";
        }else if ([shortcutItem.type isEqualToString:@"com.zhangcc.two"]){
            NSLog(@"app没被杀死 这是第二个按钮");
            self.window.rootViewController.view.backgroundColor  = [UIColor yellowColor];
            vc.textLabel.text = @"程序没被杀死,这是第二个按钮";

        }else if ([shortcutItem.type isEqualToString:@"com.zhangcc.third"]){
            NSLog(@"app没被杀死 这是第三个按钮");
            self.window.rootViewController.view.backgroundColor  = [UIColor blueColor];
            vc.textLabel.text = @"程序没被杀死,这是第三个按钮";

        }else if ([shortcutItem.type isEqualToString:@"com.zhangcc.four"]){
            NSLog(@"app没被杀死 这是第四个按钮");
            self.window.rootViewController.view.backgroundColor  = [UIColor orangeColor];
            vc.textLabel.text = @"程序没被杀死,这是第四个按钮";

        }
     }

    if (completionHandler) {
        completionHandler(YES);
    }
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
