//
//  ResponseTests.swift
//  TenorizeTests
//
//  Created by Eric Giannini on 8/29/18.
//  Copyright © 2018 Eric Giannini. All rights reserved.
//

import XCTest
@testable import Tenorize

class ResponseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDecoding() {
        
        let testBundle = Bundle(for: type(of: self))
        guard let fileURL = testBundle.url(forResource: "Response", withExtension: "json") else {
            XCTFail("Unable to load sample JSON")
            return
        }
        
        do {
            let data = try Data(contentsOf: fileURL)
            let decoder = JSONDecoder()
            let response = try decoder.decode(Response<[GIF]>.self, from: data)
            
            XCTAssertEqual(response.webURL?.absoluteString, "https://tenor.com/search/h-gifs")
            XCTAssertEqual(response.results?.count, 2)
            XCTAssertEqual(response.next, "7")
        } catch {
            XCTFail("Error in parsing/decoding JSON")
        }
    }
}
