//
//  ValHashtag.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation

struct ValHashtag: Codable {
    let id: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}
