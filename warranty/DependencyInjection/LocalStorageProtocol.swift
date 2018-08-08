//
//  LocalStorageProtocol.swift
//  warranty
//
//  Created by Pakho Yeung on 4/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

protocol LocalStorageRealmProtocol {
    
}

protocol LocalStorageRealmInjected {
    
}

extension LocalStorageRealmInjected {
    var localStorage: RealmService {
      return InjectionMap.localStorageRealmProvider
    }
}
