//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Ali Elsokary on 1/2/21.
//  
//

import XCTest

class RemoteFeedLoader {
	func load() {
		HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
	}
}

class HTTPClient {

	static let shared = HTTPClient()

	private init() {}

	var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
	
	func test_init_DoesNotRequestDataFromURL() {
		let client = HTTPClient.shared
		_ = RemoteFeedLoader()
		
		XCTAssertNil(client.requestedURL)
	}
	
	func test_load_requestedDataFromURL() {
		let client = HTTPClient.shared
		let sut = RemoteFeedLoader()
		
		sut.load()
		
		XCTAssertNotNil(client.requestedURL)
	}
}
