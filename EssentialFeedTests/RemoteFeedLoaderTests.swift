//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Ali Elsokary on 1/2/21.
//  
//

import XCTest

class RemoteFeedLoader {
	
}

class HTTPClient {
	var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
	
	func test_init_DoesNotRequestDataFromURL() {
		let client = HTTPClient()
		_ = RemoteFeedLoader()
		
		XCTAssertNil(client.requestedURL)
	}
}
