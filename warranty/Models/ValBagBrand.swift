//
//  ValBagBrand.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

struct ValBagBrandZH: Codable {
    let id: Int
    let hashName: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case hashName
        case name
    }
}

struct ValBagBrandENG: Codable {
    let id: Int
    let hashName: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case hashName
        case name
    }
}

struct ValBagBrandCN: Codable {
    let id: Int
    let hashName: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case hashName
        case name
    }
}
