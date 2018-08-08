//
//  RealmServiceError.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import RealmSwift

enum RealmServiceError/*: Int*/ {
    case generateEncryptionKeyFail
    case addEncrptionKeyToKeychainFail
    case openConnectionFail(realmError:NSError)
    case writeFail(realmError:NSError, realmObject:Object)
    
    static func err(_ err: RealmServiceError, file:String = #file, function:String = #function, line:Int = #line) -> String {
        //            return URL(string: file)!.lastPathComponent + " \(function) \(line)  ❗️RealmService Error: " + parse(code: err)
        return "❗️RealmService Error: " + parse(code: err)
    }
    
    private static func parse(code: RealmServiceError) -> String {
        switch code {
        case generateEncryptionKeyFail: return "Fail to generate encryption key"
        case addEncrptionKeyToKeychainFail: return "Fail to Add encrption key to keychain"
        case openConnectionFail(let realmError): return "Fail to open connection. Realm Error: \(realmError)"
        case writeFail(let realmError, let object): return "Fail to execute a write transaction. \(object) Realm Error: \(realmError)"
        }
    }
}
