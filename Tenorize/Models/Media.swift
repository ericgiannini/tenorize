//
//  Media.swift
//  Tenorize
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

import Foundation

struct Media: Decodable {
    
    let url: URL?
    
    let dimension: [Int]?
    
    let duration: Double?
    
    let preview: URL?
    
    let size: Int64?
    
    enum CodingKeys: String, CodingKey {
        case url
        case dimension = "dims"
        case duration
        case preview
        case size
    }
}
