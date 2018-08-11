//
//  AWSMobileClientServiceError.swift
//  warranty
//
//  Created by Pakho Yeung on 11/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

enum AWSMobileClientServiceError {
    case initMobileClientFail
    
    static func err(_ err: AWSMobileClientServiceError, file:String = #file, function:String = #function, line:Int = #line) -> String {
        //            return URL(string: file)!.lastPathComponent + " \(function) \(line)  ❗️RealmService Error: " + parse(code: err)
        return "❗️AWSMobileClientService Error: " + parse(code: err)
    }
    
    private static func parse(code: AWSMobileClientServiceError) -> String {
        switch code {
        case .initMobileClientFail: return "Fail to initialize a mobile client for AWS."
        }
    }
}
