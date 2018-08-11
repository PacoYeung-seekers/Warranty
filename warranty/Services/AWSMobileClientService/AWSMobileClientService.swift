//
//  AWSMobileClientService.swift
//  warranty
//
//  Created by Pakho Yeung on 11/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import UIKit.UIApplication
import Foundation
import AWSMobileClient

class AWSMobileClientService {
    
    private var application: UIApplication?
    private var launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    
    private init() {}
    
    private static var _instance: AWSMobileClientService?
    
    public static func shareInstance() -> AWSMobileClientService {
        if _instance == nil {
            _instance = AWSMobileClientService()
            return _instance!
        }
        return _instance!
    }
    
    @discardableResult public func setup(with application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> AWSMobileClientService {
        self.application = application
        self.launchOptions = launchOptions
        if !setupMobileClient() {
            fatalError(AWSMobileClientServiceError.err(.initMobileClientFail))
        }
        return AWSMobileClientService.shareInstance()
    }
    
    private func setupMobileClient() -> Bool {
        guard let application = self.application else {
            return false
        }
        if !AWSMobileClient.sharedInstance()
            .interceptApplication(
                application,
                didFinishLaunchingWithOptions: launchOptions
            ) {
            return false
        }
        //AWSDDLog.add(AWSDDTTYLogger.sharedInstance)
        //AWSDDLog.sharedInstance.logLevel = .info
        return true
    }
    
    public func open(with url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        guard let application = self.application else {
            return false
        }
        return AWSMobileClient.sharedInstance().interceptApplication(
            application, open: url,
            sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String,
            annotation: options[UIApplicationOpenURLOptionsKey.annotation]!
        )
    }
}
