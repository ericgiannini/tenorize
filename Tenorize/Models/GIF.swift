//
//  GIF.swift
//  Tenorize
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

import Foundation

struct GIF: Decodable {
    
    let tags: [String]?
    
    let url: URL?
    
    let media: [MediaCollection]?
    
    let created: Double?
    
    let shares: Int?
    
    let itemURL: URL?
    
    let hasAudio: Bool?
    
    let title: String?
    
    let id: String?
    
    enum CodingKeys: String, CodingKey {
        case tags, url, media, created, shares
        case itemURL = "itemurl"
        case hasAudio = "hasaudio"
        case title, id
    }
}

