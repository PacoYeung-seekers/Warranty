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
    @objc dynamic var uploadTime = ""
    @objc dynamic var buyTime = ""
    @objc dynamic var days = 0
    @objc dynamic var imageLink:String? = nil
    @objc dynamic var hashtag:String? = nil
    @objc dynamic var bagBrandId = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
    enum AttributeKeys: String {
        case uploadTime = "uploadTime"
        case buyTime = "buyTime"
        case days = "days"
        case imageLink = "imageLink"
        case hashtag = "hashtag"
        case bagBrandId = "bagBrandId"
    }
    
}
