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
		HTTPClient.shared.get(from: URL(string: "https://a-url.com")!)
	}
}

class HTTPClient {

	static var shared = HTTPClient()

	func get(from url : URL) {}

}

class HTTPClientSpy: HTTPClient {
	override func get(from url : URL) {
		requestedURL = url
	}

	var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
	
	func test_init_DoesNotRequestDataFromURL() {
		let client = HTTPClientSpy()
		HTTPClient.shared = client
		_ = RemoteFeedLoader()
		
		XCTAssertNil(client.requestedURL)
	}
	
	func test_load_requestedDataFromURL() {
		let client = HTTPClientSpy()
		HTTPClient.shared = client
		let sut = RemoteFeedLoader()
		
		sut.load()
		
		XCTAssertNotNil(client.requestedURL)
	}
}
