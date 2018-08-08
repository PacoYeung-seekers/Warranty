//
//  Hashtag.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import RealmSwift

class RealmHashtag: Object, PrimaryKeyRequired {
    @objc dynamic var id = ""
    @objc dynamic var hashName = ""
    @objc dynamic var name = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    enum AttributeKeys: String {
        case id = "id"
        case hashName = "hashName"
        case name = "name"
    }
    
}
