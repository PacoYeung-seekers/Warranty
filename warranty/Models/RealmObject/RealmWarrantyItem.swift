//
//  WarrantyItem.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import RealmSwift

class RealmWarrantyItem: Object, PrimaryKeyRequired {
    @objc dynamic var id = ""
    @objc dynamic var uploadAt = ""
    @objc dynamic var protectAt = ""
    @objc dynamic var duration = 0
    @objc dynamic var hashtag: String? = nil
    @objc dynamic var phone: String? = nil
    @objc dynamic var email: String? = nil
    
    @objc dynamic var docImageLink: String? = nil
    @objc dynamic var docImageBinary: String? = nil
    
    @objc dynamic var productImageLink:String? = nil
    @objc dynamic var productThumbnailLink:String? = nil
    @objc dynamic var productImageBinary:String? = nil
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    enum AttributeKeys: String {
        case id = "id"
        case uploadAt = "uploadAt"
        case protectAt = "protectAt"
        case duration = "duration"
        case hashtag = "hashtag"
        case phone = "phone"
        case email = "email"
        case docImageLink = "docImageLink"
        case docImageBinary = "docImageBinary"
        case productImageLink = "productImageLink"
        case productThumbnailLink = "productThumbnailLink"
        case productImageBinary = "productImageBinary"
    }
    
}
