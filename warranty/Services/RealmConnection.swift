//
//  RealmConnection.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import Security
import RealmSwift

class RealmConnection {
    
    lazy private var realm: Realm = {
        var realm: Realm?
        do {
            realm = try Realm(configuration: realmConfig)
        } catch let err as NSError {
            fatalError(RealmServiceError.err(.openConnectionFail(realmError: err)))
        }
        return realm!
    }()
    
    lazy private var realmTest: Realm = {
        var realm: Realm?
        do {
            realm = try Realm(configuration: realmTestConfig)
        } catch let err as NSError {
            fatalError(RealmServiceError.err(.openConnectionFail(realmError: err)))
        }
        return realm!
    }()
    
    lazy private var realmConfig: Realm.Configuration = {
        var config = Realm.Configuration.defaultConfiguration
        config.encryptionKey = getEncryptionKey() as Data
        return config
    }()
    
    lazy private var realmTestConfig: Realm.Configuration = {
       var config = realmConfig
        config.inMemoryIdentifier = "InMemoryRealm"
        return config
    }()
    
    public func getRealm() -> Realm {
        return realm
    }
    
    public func getTestRealm() -> Realm {
        return realmTest
    }
    
    
    private func getEncryptionKey() -> NSData {
        // Identifier for our keychain entry
        let keychainIdentifier = "io.Realm.EncryptionExampleKey"
        let keychainIdentifierData = keychainIdentifier.data(using: String.Encoding.utf8, allowLossyConversion: false)!
        
        var query: [NSString: AnyObject] = [
            kSecClass: kSecClassKey,
            kSecAttrApplicationTag: keychainIdentifierData as AnyObject,
            kSecAttrKeySizeInBits: 512 as AnyObject,
            kSecReturnData: true as AnyObject
        ]
        
        let existedKey = getEncryptionKeyFromKeychain(query)
        if (existedKey != nil) {
            return existedKey!
        }
        
        let newKey = generateRandomEncryptionKey()
        if newKey == nil {
            fatalError(RealmServiceError.err(.generateEncryptionKeyFail))
        }
        
        query = [
            kSecClass: kSecClassKey,
            kSecAttrApplicationTag: keychainIdentifierData as AnyObject,
            kSecAttrKeySizeInBits: 512 as AnyObject,
            kSecValueData: newKey!
            ] as [NSString : AnyObject]
        
        if (storeEncryptionKeyToKeychain(query) == false) {
            fatalError(RealmServiceError.err(.addEncrptionKeyToKeychainFail))
        }
        
        return newKey!
    }
    
    private func generateRandomEncryptionKey() -> NSData? {
        let keyData = NSMutableData(length: 64)!
        if(SecRandomCopyBytes(kSecRandomDefault, 64, keyData.mutableBytes.bindMemory(to: UInt8.self, capacity: 64)) != errSecSuccess) {
            return nil
        }
        return keyData
    }
    
    private func getEncryptionKeyFromKeychain(_ query: [NSString:AnyObject]) -> NSData? {
        var dataTypeRef: AnyObject?
        let status = withUnsafeMutablePointer(to: &dataTypeRef) { SecItemCopyMatching(query as CFDictionary, UnsafeMutablePointer($0)) }
        if status != errSecSuccess {
            return nil
        }
        return (dataTypeRef as! NSData)
    }
    
    private func storeEncryptionKeyToKeychain(_ query: [NSString:AnyObject]) -> Bool {
        let status = SecItemAdd(query as CFDictionary, nil)
        if status != errSecSuccess {
            return false
        }
        return true
    }
    
}
