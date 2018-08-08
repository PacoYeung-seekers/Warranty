//
//  WarrantyItemDataStoreProtocol.swift
//  warranty
//
//  Created by Pakho Yeung on 4/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

protocol WarrantyItemDataStoreProtocol {
    
}

protocol WarrantyItemDataStoreInjected {
    
}

extension WarrantyItemDataStoreInjected {
    var warrantyItemDataStore: ObjectDataStorageProvider<RealmWarrantyItem> {
        return InjectionMap.warrantyItemDataStoreProvider
    }
}
