//
//  InjectionMap.swift
//  warranty
//
//  Created by Pakho Yeung on 4/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation


class InjectionMap {
    //Provider
    static var localStorageRealmProvider = RealmService.shared
    static var awsAppSyncProvider = AWSAppSyncService.shareInstance()
    //DataStore Provider
    static var warrantyItemDataStoreProvider = ObjectDataStorageProvider<RealmWarrantyItem>()
}
