//
//  BagBrand.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import RealmSwift

class RealmBagBrand: Object, PrimaryKeyRequired {
    @objc dynamic var id = ""
    @objc dynamic var nameENG = ""
    @objc dynamic var nameCZ = ""
    @objc dynamic var nameZH = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    enum AttributeKeys: String {
        case id = "id"
        case nameENG = "nameENG"
        case nameCZ = "nameCZ"
        case nameZH = "nameZH"
    }
}

