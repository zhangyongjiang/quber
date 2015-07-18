//
//  AppDelegate.m
//  Quber
//
//  Created by Kevin Zhang on 7/17/15.
//  Copyright (c) 2015 Kevin Zhang. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"
#import "UberViewController.h"
#import "NSSlidePanelController.h"
#import "NavigationControllerBase.h"
#import "MenuViewController.h"

@interface AppDelegate ()

@property(strong, nonatomic) NSSlidePanelController* slidePanelController;
@property(strong, nonatomic) NavigationControllerBase* navController;
@property(strong, nonatomic) NSSlidePanelController* resumeController;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow* window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window.backgroundColor = [UIColor whiteColor];
    [window makeKeyAndVisible];
    self.window = window;
    
    
    self.slidePanelController = [[NSSlidePanelController alloc] init];
    self.slidePanelController.shouldDelegateAutorotateToVisiblePanel = false;
    
    self.navController = [[NavigationControllerBase alloc] init];
    self.slidePanelController.centerPanel = self.navController;
    UberViewController* controller = [[UberViewController alloc] init];
    [self.navController pushViewController:controller animated: YES];
    self.navController.navigationBar.translucent = YES;
    self.slidePanelController.leftPanel = [[MenuViewController alloc] init];

    self.window.rootViewController = self.slidePanelController;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
