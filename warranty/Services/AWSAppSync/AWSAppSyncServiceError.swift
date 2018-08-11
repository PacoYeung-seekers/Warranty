//
//  AWSServiceError.swift
//  warranty
//
//  Created by Pakho Yeung on 11/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

enum AWSAppSyncServiceError {
    case initAppSyncFail
    case connectLocaDatabaseFail(awsError: Error)
    case createAppSyncClientFail(awsError: Error)
    
    static func err(_ err: AWSAppSyncServiceError, file:String = #file, function:String = #function, line:Int = #line) -> String {
        //            return URL(string: file)!.lastPathComponent + " \(function) \(line)  ❗️RealmService Error: " + parse(code: err)
        return "❗️AWSAppSyncService Error: " + parse(code: err)
    }
    
    private static func parse(code: AWSAppSyncServiceError) -> String {
        switch code {
        case .initAppSyncFail: return "Fail to initialize AppSync."
        case .connectLocaDatabaseFail(let err): return "Fail to connect local database(SQLite) for AppSync. AWS Error: \(err.localizedDescription)"
        case .createAppSyncClientFail(let err): return "Fail to create a AppSync client. AWS Error: \(err.localizedDescription)"
        }
    }
}
