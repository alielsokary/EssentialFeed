//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ali Elsokary on 1/1/21.
//  
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
	case success([FeedItem])
	case failure(Error)
}

protocol FeedLoader {
	associatedtype Error: Swift.Error
	func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
