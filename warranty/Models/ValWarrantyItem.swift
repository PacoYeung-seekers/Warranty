//
//  ValWarrantyItem.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

struct ValWarrantyItem: Codable  {
    let uploadTime:String
    let buyTime:String
    let days: Int
    let imageLink: String?
    let hashtag: String?
    let bagBrandId: Int
    
    enum CodingKeys: String, CodingKey {
        case uploadTime
        case buyTime
        case days
        case imageLink
        case hashtag
        case bagBrandId
    }
}
