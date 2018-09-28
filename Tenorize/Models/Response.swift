//
//  Response.swift
//  Tenorize
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

import Foundation

struct Response<T>: Decodable where T: Decodable {
    
    let webURL: URL?
    
    let results: T?
    
    let next: String?
    
    enum CodingKeys: String, CodingKey {
        case webURL = "weburl"
        case results
        case next
    }
}
