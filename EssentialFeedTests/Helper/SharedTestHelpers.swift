//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Ali Elsokary on 12/04/2023.
//  
//

import Foundation

func anyNSError() -> NSError {
	return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
	return URL(string: "http://any-url.com")!
}
