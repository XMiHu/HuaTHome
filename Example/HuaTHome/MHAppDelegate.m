//
//  MHAppDelegate.m
//  HuaTHome
//
//  Created by XMiHu on 04/23/2018.
//  Copyright (c) 2018 XMiHu. All rights reserved.
//

#import "MHAppDelegate.h"
#import "HYBaseTabBarController.h"

@implementation MHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    HYBaseTabBarController * barCon = [[HYBaseTabBarController alloc] init];
    
    self.window.rootViewController = barCon;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
