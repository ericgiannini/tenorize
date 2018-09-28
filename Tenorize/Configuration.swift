//
//  Configuration.swift
//  Tenorize
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

import Foundation

struct Configuration {
    
    static let url          = "https://api.tenor.com"
    
    static let key          = ""
    
    static let pageLimit    = 20
    
    static func checkConfiguration() {
        
        if url.isEmpty || key.isEmpty {
            fatalError("""
                Invalid configuration found
            """)
        }
    }
}
