//
//  AWSAppSyncService.swift
//  warranty
//
//  Created by Pakho Yeung on 11/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

import AWSMobileClient
import AWSAppSync

class AWSAppSyncService {
    
    fileprivate var awsCognitoCredentialsProvider:AWSCognitoCredentialsProvider!
    fileprivate var appSyncClient: AWSAppSyncClient?
    fileprivate var appSyncConfig: AWSAppSyncClientConfiguration?
    
    private init() {}
    
    private static var _instance: AWSAppSyncService?
    
    public static func shareInstance() -> AWSAppSyncService {
        if _instance == nil {
            _instance = AWSAppSyncService()
            return _instance!
        }
        return _instance!
    }
    
    @discardableResult public func setup() -> AWSAppSyncService {
        self.awsCognitoCredentialsProvider = AWSMobileClient.sharedInstance().getCredentialsProvider()
        if !setupAppSync() {
            fatalError(AWSAppSyncServiceError.err(.initAppSyncFail))
        }
        return AWSAppSyncService.shareInstance()
    }
    
    private func setupAppSync() -> Bool {
        if !openSQLiteForAppsync() {
            return false
        }
        if !createAppSyncClient() {
            return false
        }
        return true
    }
    
    public func getAppSyncClient() -> AWSAppSyncClient? {
        return appSyncClient
    }
    
    fileprivate func openSQLiteForAppsync() -> Bool {
        let appSyncRegion = AWSAppSyncConstants.region
        guard let appSyncEndpointURL = URL(string: AWSAppSyncConstants.endpointURL) else {
            return false
        }
        let databaseURL = URL(fileURLWithPath:NSTemporaryDirectory())
            .appendingPathComponent(AWSAppSyncConstants.localDataBaseName)
        
        do {
            appSyncConfig = try AWSAppSyncClientConfiguration(
                url: appSyncEndpointURL,
                serviceRegion: appSyncRegion,
                credentialsProvider: awsCognitoCredentialsProvider,
                databaseURL: databaseURL)
        } catch {
            fatalError(AWSAppSyncServiceError.err(.connectLocaDatabaseFail(awsError: error)))
        }
        return true
    }
    
    fileprivate func createAppSyncClient() -> Bool {
        guard let appSyncConfig = appSyncConfig else {
            return false
        }
        do {
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            appSyncClient?.apolloClient?.cacheKeyForObject = { $0["userId"] }
        } catch {
            fatalError(AWSAppSyncServiceError.err(.createAppSyncClientFail(awsError: error)))
        }
        return true
    }
}
