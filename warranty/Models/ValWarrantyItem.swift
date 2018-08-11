//
//  ValWarrantyItem.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

struct ValWarrantyItem: Codable  {
    let id: String
    let uploadAt:String
    let protectAt:String
    let duration: Int
    let hashtag: String
    let phone: String
    let email: String
    
    let docImageLink: Set<String>?
    let docImageBinary: Set<Data>?
    
    let productImageLink: Set<String>?
    let productThumbnailLink: String?
    let productImageBinary: Set<Data>?
    
    

    enum CodingKeys: String, CodingKey {
        case id
        case uploadAt
        case protectAt
        case duration
        case hashtag
        case phone
        case email
        case docImageLink
        case docImageBinary
        case productImageLink
        case productThumbnailLink
        case productImageBinary
    }
}
