//
//  AWSAppSyncProtocol.swift
//  warranty
//
//  Created by Pakho Yeung on 11/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

protocol AWSAppSyncProtocol {
    
}

protocol AWSAppSyncInjected {
    
}

extension AWSAppSyncInjected {
    var awsAppSync: AWSAppSyncService {
        return InjectionMap.awsAppSyncProvider
    }
}
