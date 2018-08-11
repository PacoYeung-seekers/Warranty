//
//  ValBagBrand.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

struct ValBagBrand: Codable {
    let id: String
    let nameENG: String
    let nameCN: String
    let nameZH: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case nameENG
        case nameCN
        case nameZH
    }
}
