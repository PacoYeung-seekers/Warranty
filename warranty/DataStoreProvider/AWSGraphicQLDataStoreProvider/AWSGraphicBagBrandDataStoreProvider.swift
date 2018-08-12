//
//  AWSGraphicBagBrandDataStoreProvider.swift
//  warranty
//
//  Created by Pakho Yeung on 11/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import AWSAppSync

class AWSGraphicBagBrandDataStoreProvider {
    lazy private var results: [ValBagBrand] = setupResults()
    
}

extension AWSGraphicBagBrandDataStoreProvider: AWSAppSyncInjected {
    
    private func setupResults() -> [ValBagBrand] {
        
        return []
    }
    
    private func listenChange() {
    }
    
}
