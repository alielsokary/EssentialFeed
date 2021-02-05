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
	let url: URL
	
	init(url: URL, client: HTTPClient) {
		self.url = url
		self.client = client
	}

	func load() {
		client.get(from: url)
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
		let url = URL(string: "https://a-url.com")!
		let client = HTTPClientSpy()
		_ = RemoteFeedLoader(url: url, client: client)
		
		XCTAssertNil(client.requestedURL)
	}
	
	func test_load_requestedDataFromURL() {
		let url = URL(string: "https://a-url.com")!
		let client = HTTPClientSpy()
		let sut = RemoteFeedLoader(url: url, client: client)
		
		sut.load()
		
		XCTAssertEqual(client.requestedURL, url)
	}
}
