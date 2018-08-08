//
//  AppUserDefault.swift
//  warranty
//
//  Created by Pakho Yeung on 25/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

class AppUserDefaults {
    
    public static var useId: String? {
        get{
            return UserDefaults.standard.string(forKey: Key.userId.rawValue)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Key.userId.rawValue)
        }
    }
    
    private enum Key: String {
        case userId = "userId"
    }
    
    private init() {
        
    }
}
