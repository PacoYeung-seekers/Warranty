//
//  OneSignalService.swift
//  warranty
//
//  Created by Pakho Yeung on 11/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import UIKit.UIApplication
import Foundation
import OneSignal

class OneSignalService {
    
    private let notificationReceivedBlock: OSHandleNotificationReceivedBlock = { notification in
        
        print("Received Notification: \(notification!.payload.notificationID)")
    }
    
    private let notificationOpenedBlock: OSHandleNotificationActionBlock = { result in
        // This block gets called when the user reacts to a notification received
        let payload: OSNotificationPayload = result!.notification.payload
        
        var fullMessage = payload.body
        print("Message = \(fullMessage ?? "")")
        
        if payload.additionalData != nil {
            if payload.title != nil {
                let messageTitle = payload.title
                print("Message Title = \(messageTitle!)")
            }
            
            let additionalData = payload.additionalData
            if additionalData?["actionSelected"] != nil {
                fullMessage = fullMessage! + "\nPressed ButtonID: \(additionalData!["actionSelected"])"
            }
        }
    }
    
    public init(launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        self.initOneSignal(launchOptions: launchOptions)
    }
    
    private func initOneSignal(launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        OneSignal.initWithLaunchOptions(launchOptions,
            appId: OneSignalConstants.apiKey,
            handleNotificationReceived: notificationReceivedBlock,
            handleNotificationAction: notificationOpenedBlock,
            settings: [kOSSettingsKeyAutoPrompt: false])
        
        OneSignal.inFocusDisplayType = OSNotificationDisplayType.notification;
        
        OneSignal.promptForPushNotifications(userResponse: { accepted in
            print("User accepted notifications: \(accepted)")
        })
    }
    
}
