//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Ali Elsokary on 1/2/21.
//  
//

import XCTest

class RemoteFeedLoader {
	let client: HTTPClient
	
	init(client: HTTPClient) {
		self.client = client
	}

	func load() {
		client.get(from: URL(string: "https://a-url.com")!)
	}
}

protocol HTTPClient {
	func get(from url : URL)
}

class HTTPClientSpy: HTTPClient {
	 func get(from url : URL) {
		requestedURL = url
	}

	var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
	
	func test_init_DoesNotRequestDataFromURL() {
		let client = HTTPClientSpy()
		_ = RemoteFeedLoader(client: client)
		
		XCTAssertNil(client.requestedURL)
	}
	
	func test_load_requestedDataFromURL() {
		let client = HTTPClientSpy()
		let sut = RemoteFeedLoader(client: client)
		
		sut.load()
		
		XCTAssertNotNil(client.requestedURL)
	}
}
