//
//  AppDelegate.swift
//  warranty
//
//  Created by Pakho Yeung on 18/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import UIKit
//import AWSPinpoint

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //var pinpoint: AWSPinpoint?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //AWS Mobile Client
        AWSMobileClientService.shareInstance().setup(with: application, launchOptions: launchOptions)
        //AWS AppSync
        AWSAppSyncService.shareInstance().setup()
        
        //AWS Analytics
//        let pinpointAnalyticsClient =
//            AWSPinpoint(configuration:
//                AWSPinpointConfiguration.defaultPinpointConfiguration(
//                    launchOptions: nil
//                )
//            ).analyticsClient
        
        //AWS Push Notification
//        pinpoint =
//            AWSPinpoint(configuration:
//                AWSPinpointConfiguration.defaultPinpointConfiguration(launchOptions: launchOptions))
        
        //OneSignal Push Notification
        _ = OneSignalService(launchOptions: launchOptions)
        
        return true
    }
    
    func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
         return AWSMobileClientService.shareInstance().open(with: url, options: options)
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //AWS Push Notification
//        pinpoint!.notificationManager.interceptDidRegisterForRemoteNotifications(
//            withDeviceToken: deviceToken)
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        //AWS Push Notification
//        pinpoint!.notificationManager.interceptDidReceiveRemoteNotification(
//            userInfo, fetchCompletionHandler: completionHandler)
//
//        if (application.applicationState == .active) {
//            let alert = UIAlertController(title: "Notification Received",
//                                          message: userInfo.description,
//                                          preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//
//            UIApplication.shared.keyWindow?.rootViewController?.present(
//                alert, animated: true, completion:nil)
//        }
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}
