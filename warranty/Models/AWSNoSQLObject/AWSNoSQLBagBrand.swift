//
//  AWSNoSQLBagBrand.swift
//  MySampleApp
//
//
// Copyright 2018 Amazon.com, Inc. or its affiliates (Amazon). All Rights Reserved.
//
// Code generated by AWS Mobile Hub. Amazon gives unlimited permission to 
// copy, distribute and modify it.
//
// Source code generated from template: aws-my-sample-app-ios-swift v0.21
//

import Foundation
import UIKit
import AWSDynamoDB

class AWSNoSQLBagBrand: AWSDynamoDBObjectModel, AWSDynamoDBModeling {
    
    var _id: String?
    var _nameCN: String?
    var _nameENG: String?
    var _nameZH: String?
    
    class func dynamoDBTableName() -> String {

        return "warranty-mobilehub-1867399923-AWSNoSQLBagBrand"
    }
    
    class func hashKeyAttribute() -> String {

        return "_id"
    }
    
    override class func jsonKeyPathsByPropertyKey() -> [AnyHashable: Any] {
        return [
               "_id" : "id",
               "_nameCN" : "nameCN",
               "_nameENG" : "nameENG",
               "_nameZH" : "nameZH",
        ]
    }
}
